const { select } = require("@evershop/postgres-query-builder");
const { pool } = require("@evershop/evershop/src/lib/postgres/connection");
const { error } = require("@evershop/evershop/src/lib/log/logger");

module.exports = async (request, response, delegate, next) => {
  try {
    const { order_id } = request.query;
    const order = await select()
      .from("order")
      .where("uuid", "=", order_id)
      .load(pool);

    response.json({ status: order.payment_status });
    return;
  } catch (e) {
    error(e);
    return;
  }
};
