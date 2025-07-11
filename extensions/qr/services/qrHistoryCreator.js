const {
  commit,
  getConnection,
  insert,
  rollback,
  startTransaction,
} = require("@evershop/postgres-query-builder");
const { v4: uuidv4 } = require("uuid");
const { pool } = require("@evershop/evershop/src/lib/postgres/connection");
const { hookable } = require("@evershop/evershop/src/lib/util/hookable");

// eslint-disable-next-line no-multi-assign
module.exports = exports = {};

async function saveQrHistory(req, connection) {
  // Save QrHistory to DB
  const qrHistory = await insert("qr_history")
    .given({
      ...req.exportData(),
      uuid: uuidv4().replace(/-/g, ""),
    })
    .execute(connection);
  return order;
}

async function createQrHistory(req) {
  // Start creating order
  const connection = await getConnection(pool);
  try {
    await startTransaction(connection);

    // Save order to DB
    const qrHistory = await hookable(saveQrHistory, { req })(req, connection);

    await commit(connection);
    return qrHistory;
  } catch (e) {
    await rollback(connection);
    throw e;
  }
}

exports.createOrder = async (req) => {
  const qrHistory = await hookable(createQrHistory, {
    req,
  })(req);
  return qrHistory;
};
