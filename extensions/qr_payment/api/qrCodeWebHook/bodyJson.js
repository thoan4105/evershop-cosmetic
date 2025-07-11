const bodyParser = require("body-parser");

module.exports = (request, response, delegate, next) => {
  bodyParser.raw({ type: "application/json" })(request, response, next);
};
