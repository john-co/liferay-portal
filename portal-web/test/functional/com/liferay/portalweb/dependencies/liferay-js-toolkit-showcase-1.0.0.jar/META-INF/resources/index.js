'use strict';

Liferay.Loader.define('liferay-js-toolkit-showcase@1.0.0/index', ['module', 'exports', 'require', 'liferay-js-toolkit-showcase$react', 'liferay-js-toolkit-showcase$react-dom', './AppComponent'], function (module, exports, require) {
    var define = undefined;
    Object.defineProperty(exports, "__esModule", {
        value: true
    });
    exports.default = main;

    var _react = require('liferay-js-toolkit-showcase$react');

    var _react2 = _interopRequireDefault(_react);

    var _reactDom = require('liferay-js-toolkit-showcase$react-dom');

    var _reactDom2 = _interopRequireDefault(_reactDom);

    var _AppComponent = require('./AppComponent');

    var _AppComponent2 = _interopRequireDefault(_AppComponent);

    function _interopRequireDefault(obj) {
        return obj && obj.__esModule ? obj : { default: obj };
    }

    /**
     * This is the main entry point of the portlet.
     *
     * See https://tinyurl.com/js-ext-portlet-entry-point for the most recent 
     * information on the signature of this function.
     *
     * @param  {Object} params a hash with values of interest to the portlet
     * @return {void}
     */
    function main(_ref) {
        var portletNamespace = _ref.portletNamespace,
            contextPath = _ref.contextPath,
            portletElementId = _ref.portletElementId;

        _reactDom2.default.render(_react2.default.createElement(_AppComponent2.default, {
            portletNamespace: portletNamespace,
            contextPath: contextPath,
            portletElementId: portletElementId

        }), document.getElementById(portletElementId));
    }
});
//# sourceMappingURL=index.js.map