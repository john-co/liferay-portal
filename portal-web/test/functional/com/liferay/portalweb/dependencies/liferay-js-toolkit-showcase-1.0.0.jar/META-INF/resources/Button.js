"use strict";

Liferay.Loader.define("liferay-js-toolkit-showcase@1.0.0/Button", ['module', 'exports', 'require', 'liferay-js-toolkit-showcase$react', './Button.css'], function (module, exports, require) {
  var define = undefined;
  Object.defineProperty(exports, "__esModule", {
    value: true
  });

  exports.default = function () {
    return _react2.default.createElement("button", { className: "Button" }, "Press the button!");
  };

  var _react = require("liferay-js-toolkit-showcase$react");

  var _react2 = _interopRequireDefault(_react);

  require("./Button.css");

  function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : { default: obj };
  }
});
//# sourceMappingURL=Button.js.map