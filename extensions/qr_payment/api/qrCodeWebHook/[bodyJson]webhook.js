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
const { display } = require("zero-decimal-currencies");
const { getConfig } = require("@evershop/evershop/src/lib/util/getConfig");
const { parse } = require("@babel/core");
const { v4: uuidv4 } = require("uuid");

function validApiKey(header) {
  if (!header || !header.startsWith("Apikey ")) return null;
  const apiKeyConfig = getConfig("system.apiKey", "");
  return header.substring(7).trim() === apiKeyConfig;
}

function validTransaction(transaction, paymentData) {
  const account = getConfig("system.qrPayment.accountNumber", "");
  return (
    transaction &&
    transaction.amount === parseFloat(paymentData.transferAmount) &&
    account === paymentData.accountNumber
  );
}

module.exports = async (request, response, delegate, next) => {
  const connection = await getConnection();
  try {
    const event = JSON.parse(request.body);

    const authHeader = request.headers["authorization"];

    if (!validApiKey(authHeader)) {
      await rollback(connection);
      return response.json({ received: false });
    }

    // const paymentData = event.data;

    await startTransaction(connection);

    // save paymen history
    await insert("qr_history")
      .given({
        uuid: uuidv4().replace(/-/g, ""),
        gateway: event.gateway || null,
        code: event.code || null,
        account_number: event.accountNumber || null,
        content: event.content || null,
        transfer_amount: event.transferAmount || null,
        transfer_type: event.transferType || null,
        transaction_date: new Date(event.transactionDate) || null,
      })
      .execute(connection);

    // const transaction = await select()
    //   .from("payment_transaction")
    //   .where("additional_information", "=", paymentData.code)
    //   .load(connection);

    // if (!transaction) {
    //   await rollback(connection);
    //   return response.status(404).json({
    //     status: false,
    //     message: "Transaction not found",
    //   });
    // }

    // if (!validTransaction(transaction, paymentData)) {
    //   await rollback(connection);
    //   return response.status(400).json({
    //     status: false,
    //     message: "Invalid transaction data",
    //   });
    // }

    // const order = await select()
    //   .from("order")
    //   .where("order_id", "=", transaction.payment_transaction_order_id)
    //   .load(connection);

    // if (!order) {
    //   await rollback(connection);
    //   return response.status(404).json({
    //     status: false,
    //     message: "Order not found",
    //   });
    // }

    // debug("payment_intent.succeeded event received");

    // await insertOnUpdate("payment_transaction", ["uuid"])
    //   .given({
    //     amount: parseFloat(display(transaction.amount, order.currency)),
    //     uuid: transaction.uuid,
    //     payment_transaction_order_id: order.order_id,
    //     transaction_id: transaction.transaction_id,
    //     transaction_type: "online",
    //     payment_action: "Automatic",
    //   })
    //   .execute(connection);

    // // Add an activity log
    // await insert("order_activity")
    //   .given({
    //     order_activity_order_id: order.order_id,
    //     comment: `Customer paid by using QRcode. Transaction ID: ${transaction.payment_transaction_id}`,
    //   })
    //   .execute(connection);

    // // Emit event to add order placed event
    // await emit("order_placed", { ...order });

    // await updatePaymentStatus(order.order_id, "paid", connection);

    await commit(connection);
    response.json({ status: true });
  } catch (err) {
    error(err);
    await rollback(connection);
    response.status(400).send(`Error: ${err.message}`);
  }
};
