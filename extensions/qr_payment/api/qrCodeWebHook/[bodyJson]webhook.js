/* eslint-disable global-require */
const {
  insert,
  startTransaction,
  commit,
  rollback,
  select,
  insertOnUpdate,
} = require("@evershop/postgres-query-builder");
const {
  getConnection,
} = require("@evershop/evershop/src/lib/postgres/connection");
const { emit } = require("@evershop/evershop/src/lib/event/emitter");
const { debug, error } = require("@evershop/evershop/src/lib/log/logger");
const {
  updatePaymentStatus,
} = require("@evershop/evershop/src/modules/oms/services/updatePaymentStatus");
const { display } = require('zero-decimal-currencies');

module.exports = async (request, response, delegate, next) => {
  const connection = await getConnection();
  try {
    const event = JSON.parse(request.body);
    debug(JSON.stringify(event))

    const paymentData = event.data;

    await startTransaction(connection);

    const transaction = await select()
      .from('payment_transaction')
      .where('additional_information', '=', paymentData.additional_info)
      .load(connection);

    debug("Transaction: " + JSON.stringify(transaction));

    const order = await select()
      .from('order')
      .where('order_id', '=', transaction.payment_transaction_order_id)
      .load(connection);
    
    debug("order: " + JSON.stringify(order));

    debug('payment_intent.succeeded event received');

    await insertOnUpdate('payment_transaction', [
      'uuid'
    ])
      .given({
        amount: parseFloat(
          display(transaction.amount, order.currency)
        ),
        uuid: transaction.uuid,
        payment_transaction_order_id: order.order_id,
        transaction_id: transaction.transaction_id,
        transaction_type: 'online',
        payment_action: 'Automatic'
      })
      .execute(connection);
    
    // Add an activity log
    await insert('order_activity')
      .given({
        order_activity_order_id: order.order_id,
        comment: `Customer paid by using QRcode. Transaction ID: ${transaction.payment_transaction_id}`
      })
      .execute(connection);

    // Emit event to add order placed event
    await emit('order_placed', { ...order });
    
    await updatePaymentStatus(order.order_id, 'paid', connection);

    await commit(connection);
    response.json({ received: true });
  } catch (err) {
    error(err);
    await rollback(connection);
    response.status(400).send(`Error: ${err.message}`);
  }
};
