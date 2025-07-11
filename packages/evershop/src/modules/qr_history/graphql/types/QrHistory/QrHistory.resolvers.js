const { select } = require("@evershop/postgres-query-builder");
const { camelCase } = require("@evershop/evershop/src/lib/util/camelCase");

module.exports = {
  Query: {
    getPaymentByCode: async (_, { code }, { pool }) => {
      try {
        const result = await select()
          .from("qr_history")
          .where("code", "=", code)
          .load(pool); // vì code là duy nhất

        return result ? camelCase(result) : null;
      } catch (error) {
        return null;
      }
    }
  }
};
