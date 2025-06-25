const stripePayment = require("stripe");
const { select, update } = require("@evershop/postgres-query-builder");
const { pool } = require("@evershop/evershop/src/lib/postgres/connection");
const { buildUrl } = require("@evershop/evershop/src/lib/router/buildUrl");
const { getConfig } = require("@evershop/evershop/src/lib/util/getConfig");
const {
  getSetting,
} = require("@evershop/evershop/src/modules/setting/services/setting");
const {
  addNotification,
} = require("@evershop/evershop/src/modules/base/services/notifications");
const { error } = require("@evershop/evershop/src/lib/log/logger");
const {
  updatePaymentStatus,
} = require("@evershop/evershop/src/modules/oms/services/updatePaymentStatus");

// eslint-disable-next-line no-unused-vars
module.exports = async (request, response, delegate, next) => {
  try {
    const { order_id } = request.query;
    const order = await select()
      .from("order")
      .where("uuid", "=", order_id)
      .load(pool);

    if (!order) {
      // Redirect to the home page
      response.redirect(buildUrl("homepage"));
      return;
    }
    response.redirect(buildUrl("checkoutSuccess", { orderId: order_id }));
    return;
  } catch (e) {
    error(e);
    response.redirect(buildUrl("homepage"));
    return;
  }
};
