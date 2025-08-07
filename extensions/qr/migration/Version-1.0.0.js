const { execute } = require("@evershop/postgres-query-builder");

// eslint-disable-next-line no-multi-assign
module.exports = exports = async (connection) => {
  await execute(
    connection,
    `CREATE TABLE "qr_history" (
      "id" INT GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) PRIMARY KEY,
      "uuid" UUID NOT NULL DEFAULT gen_random_uuid(),
      "gateway" VARCHAR(100) NOT NULL,
      "account_number" VARCHAR(100) NOT NULL,
      "transfer_amount" INTEGER NOT NULL,
      "code" VARCHAR(10) NOT NULL,
      "content" VARCHAR(300) NOT NULL,
      "transfer_type" VARCHAR(50) NOT NULL,
      "transaction_date" TIMESTAMP WITH TIME ZONE NOT NULL,
      "created_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
      "updated_at" TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
      CONSTRAINT "QR_HISTORY_UUID_UNIQUE" UNIQUE ("uuid"),
      CONSTRAINT "QR_HISTORY_CODE_UNIQUE" UNIQUE ("code")
    )`
  );

  await execute(
    connection,
    `CREATE INDEX "idx_qr_history_code" ON "qr_history" ("code")`
  );
};
