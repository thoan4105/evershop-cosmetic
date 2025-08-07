const { pool } = require("@evershop/evershop/src/lib/postgres/connection");
const {
  error
} = require("@evershop/evershop/src/lib/log/logger"); /* eslint-disable global-require */
const {
  startTransaction,
  commit,
  rollback,
  select,
  update
} = require("@evershop/postgres-query-builder");
const {
  getConnection
} = require("@evershop/evershop/src/lib/postgres/connection");
const { getConfig } = require("@evershop/evershop/src/lib/util/getConfig");
const { debug } = require("@evershop/evershop/src/lib/log/logger");

const validPayment = (qr_history, order) => {
  const account_number = getConfig("system.qrPayment.accountNumber", "");

  debug(`Validating payment for account number: ${account_number}`);
  debug(`Order grand total: ${order.grand_total}`);
  debug(`QR history transfer amount: ${qr_history.transfer_amount}`);
  debug(`QR history transfer type: ${qr_history.transfer_type}`);
  debug(`QR history transfer date: ${qr_history.transaction_date}`);
  debug(`QR history account number: ${qr_history.account_number}`);
  return (
    qr_history &&
    qr_history.account_number === account_number &&
    parseFloat(qr_history.transfer_amount) === parseFloat(order.grand_total) &&
    qr_history.transfer_type === "in" &&
    validSession(qr_history.transaction_date)
  );
};

const validSession = (transferDate) => {
  const currentDate = new Date();
  const transferDateObj = new Date(transferDate);
  const diffTimeMs = currentDate - transferDateObj;
  const diffMinutes = diffTimeMs / (1000 * 60);
  debug(`Current date: ${currentDate}`);
  debug(`Transfer date: ${transferDateObj}`);
  debug(`Difference in minutes: ${diffMinutes}`);
  return diffMinutes >= 0 && diffMinutes <= 5;
};

module.exports = async (request, response, delegate, next) => {
  const connection = await getConnection();
  try {
    await startTransaction(connection);

    const { payment_code, order_id } = request.query;
    const qr_history = await select()
      .from("qr_history")
      .where("code", "=", payment_code)
      .load(pool);

    if (!qr_history) {
      response.status(404).json({ error: "Payment code not found" });
      return;
    }
    const order = await select()
      .from("order")
      .where("uuid", "=", order_id)
      .load(pool);

    if (validPayment(qr_history, order)) {
      await update("order")
        .given({
          payment_status: "paid",
          updated_at: new Date()
        })
        .where("uuid", "=", order_id)
        .execute(connection);

      await commit(connection);

      debug(`Payment valid for order ${order_id}, updating status to paid`);
      response.status(200).json({
        status: "paid"
      });
      return;
    }
    response.status(200).json({ status: "pending" });
  } catch (e) {
    await rollback(connection);
    error(e);
    return;
  }
};
