const { select, insert } = require('@evershop/postgres-query-builder');
const smallestUnit = require('zero-decimal-currencies');
const { pool } = require('@evershop/evershop/src/lib/postgres/connection');
const {
  OK,
  INVALID_PAYLOAD
} = require('@evershop/evershop/src/lib/util/httpStatus');

module.exports = async (request, response, delegate, next) => {
  const { cart_id, order_id, transaction_code } = request.body;
  const cart = await select()
    .from('cart')
    .where('uuid', '=', cart_id)
    .load(pool);

  if (!cart) {
    response.status(INVALID_PAYLOAD);
    response.json({
      error: {
        status: INVALID_PAYLOAD,
        message: 'Invalid cart'
      }
    });
  } else {
    // Add transaction data to database
    await insert('payment_transaction')
      .given({
        payment_transaction_order_id: order_id,
        amount: cart.grand_total,
        currency: cart.currency,
        payment_action: 'authorize',
        transaction_type: 'online',
        additional_information: transaction_code
      })
      .execute(pool);

    // Save order activities
    await insert('order_activity')
      .given({
        order_activity_order_id: order_id,
        comment: 'Customer create payment transaction.',
        customer_notified: 0 // TODO: check config of SendGrid
      })
      .execute(pool);

    response.status(OK);
    response.json({
      data: {}
    });
  }
};
