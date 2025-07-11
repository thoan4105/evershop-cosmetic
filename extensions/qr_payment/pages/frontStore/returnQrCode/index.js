const stripePayment = require("stripe");
const { select, update } = require("@evershop/postgres-query-builder");
const { pool } = require("@evershop/evershop/src/lib/postgres/connection");
const { buildUrl } = require("@evershop/evershop/src/lib/router/buildUrl");
const { getConfig } = require("@evershop/evershop/src/lib/util/getConfig");
const {
  getSetting
} = require("@evershop/evershop/src/modules/setting/services/setting");
const {
  addNotification
} = require("@evershop/evershop/src/modules/base/services/notifications");
const { error } = require("@evershop/evershop/src/lib/log/logger");
const {
  updatePaymentStatus
} = require("@evershop/evershop/src/modules/oms/services/updatePaymentStatus");
const { debug } = require("@evershop/evershop/src/lib/log/logger");

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

    debug(`Processing payment for order ID: ${order_id}`);
    debug(`Order details: ${JSON.stringify(order)}`);
    debug(`Payment status: ${order.payment_status}`);

    if (order.payment_status === "paid") {
      response.redirect(buildUrl("checkoutSuccess", { orderId: order_id }));
      return;
    } else {
      await update("cart")
        .given({ status: true })
        .where("cart_id", "=", order.cart_id)
        .execute(pool);
      await updatePaymentStatus(order.order_id, "failed");
      addNotification(
        request,
        "Thanh toán thất bại, vui lòng thử lại!",
        "error"
      );
      request.session.save(() => {
        response.redirect(buildUrl("cart"));
      });
      return;
    }
  } catch (e) {
    error(e);
    response.redirect(buildUrl("homepage"));
    return;
  }
};
