Liferay.Loader.define("map-common@5.0.0/js/MarkerBase.es", ['module', 'exports', 'require', 'frontend-js-metal-web$metal-state'], function (module, exports, require) {
  var define = undefined;
  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.MarkerBase = exports["default"] = void 0;

  var _metalState = _interopRequireWildcard(require("frontend-js-metal-web$metal-state"));

  function _interopRequireWildcard(obj) {
    if (obj && obj.__esModule) {
      return obj;
    } else {
      var newObj = {};if (obj != null) {
        for (var key in obj) {
          if (Object.prototype.hasOwnProperty.call(obj, key)) {
            var desc = Object.defineProperty && Object.getOwnPropertyDescriptor ? Object.getOwnPropertyDescriptor(obj, key) : {};if (desc.get || desc.set) {
              Object.defineProperty(newObj, key, desc);
            } else {
              newObj[key] = obj[key];
            }
          }
        }
      }newObj["default"] = obj;return newObj;
    }
  }

  function _typeof(obj) {
    if (typeof Symbol === "function" && typeof Symbol.iterator === "symbol") {
      _typeof = function _typeof(obj) {
        return typeof obj;
      };
    } else {
      _typeof = function _typeof(obj) {
        return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj;
      };
    }return _typeof(obj);
  }

  function _classCallCheck(instance, Constructor) {
    if (!(instance instanceof Constructor)) {
      throw new TypeError("Cannot call a class as a function");
    }
  }

  function _defineProperties(target, props) {
    for (var i = 0; i < props.length; i++) {
      var descriptor = props[i];descriptor.enumerable = descriptor.enumerable || false;descriptor.configurable = true;if ("value" in descriptor) descriptor.writable = true;Object.defineProperty(target, descriptor.key, descriptor);
    }
  }

  function _createClass(Constructor, protoProps, staticProps) {
    if (protoProps) _defineProperties(Constructor.prototype, protoProps);if (staticProps) _defineProperties(Constructor, staticProps);return Constructor;
  }

  function _possibleConstructorReturn(self, call) {
    if (call && (_typeof(call) === "object" || typeof call === "function")) {
      return call;
    }return _assertThisInitialized(self);
  }

  function _assertThisInitialized(self) {
    if (self === void 0) {
      throw new ReferenceError("this hasn't been initialised - super() hasn't been called");
    }return self;
  }

  function _getPrototypeOf(o) {
    _getPrototypeOf = Object.setPrototypeOf ? Object.getPrototypeOf : function _getPrototypeOf(o) {
      return o.__proto__ || Object.getPrototypeOf(o);
    };return _getPrototypeOf(o);
  }

  function _inherits(subClass, superClass) {
    if (typeof superClass !== "function" && superClass !== null) {
      throw new TypeError("Super expression must either be null or a function");
    }subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, writable: true, configurable: true } });if (superClass) _setPrototypeOf(subClass, superClass);
  }

  function _setPrototypeOf(o, p) {
    _setPrototypeOf = Object.setPrototypeOf || function _setPrototypeOf(o, p) {
      o.__proto__ = p;return o;
    };return _setPrototypeOf(o, p);
  }

  /**
   * MarkerBase
   * Each instance represents a marker being shown in the map.
   * The implemented abstract methods will allow adding markers
   * to the map instance and detecting click events on them.
   * @abstract
   * @review
   */
  var MarkerBase =
  /*#__PURE__*/
  function (_State) {
    _inherits(MarkerBase, _State);

    /**
     * Initializes the instance with a native marker which will handle all
     * the execution. This function may be moved to the class constructor in
     * the future, but currently it supports the legacy API.
     * @review
     */
    function MarkerBase() {
      var _getPrototypeOf2;

      var _this;

      _classCallCheck(this, MarkerBase);

      for (var _len = arguments.length, args = new Array(_len), _key = 0; _key < _len; _key++) {
        args[_key] = arguments[_key];
      }

      _this = _possibleConstructorReturn(this, (_getPrototypeOf2 = _getPrototypeOf(MarkerBase)).call.apply(_getPrototypeOf2, [this].concat(args)));
      _this._nativeMarker = _this._getNativeMarker(_this.location, _this.map);
      return _this;
    }
    /**
     * Generates a function that, when fired, emits an event with a normalized
     * version of the received event and the given event type.
     * @param {string} externalEventType Event that will be emited when the
     * 	function is executed.
     * @return {function} Generated event handler.
     * @review
     */

    _createClass(MarkerBase, [{
      key: "_getNativeEventFunction",
      value: function _getNativeEventFunction(externalEventType) {
        var _this2 = this;

        var functionName = "_nativeEventHandler_".concat(externalEventType);

        this[functionName] = this[functionName] || function (nativeEvent) {
          _this2._handleNativeEvent(nativeEvent, externalEventType);
        };

        return this[functionName];
      }
      /**
       * Returns a nativeMarket object for a given location and map.
       * At this point any extra event should be added to the object, using
       * the implemented method _handleNativeEvent as handler.
       * @abstract
       * @param {Object} location
       * @param {Object} map
       * @return {Object} Generated native marker
       * @review
       */

    }, {
      key: "_getNativeMarker",
      value: function _getNativeMarker(
      /* eslint-disable no-unused-vars */
      location, map
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('Must be implemented');
      }
      /**
       * For a given event, it returns a normalized version of it
       * with a common structure
       * @abstract
       * @param {Event} nativeEvent
       * @return {{ lat: number, lng: number }}
       * @review
       */

    }, {
      key: "_getNormalizedEventData",
      value: function _getNormalizedEventData(
      /* eslint-disable no-unused-vars */
      nativeEvent
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('Must be implemented');
      }
      /**
       * Parses the given nativeEvent and emits a new event with the given
       * event type.
       * @param {Event} nativeEvent Native event that will be parsed.
       * @param {string} externalEventType Event type that will be emitted.
       * @review
       */

    }, {
      key: "_handleNativeEvent",
      value: function _handleNativeEvent(nativeEvent, externalEventType) {
        this.emit(externalEventType, this._getNormalizedEventData(nativeEvent));
      }
    }]);

    return MarkerBase;
  }(_metalState["default"]);
  /**
   * State definition.
   * @review
   * @static
   * @type {!Object}
   */

  exports.MarkerBase = MarkerBase;
  MarkerBase.STATE = {
    /**
     * Location to be used
     * @review
     * @type {Object}
     */
    location: _metalState.Config.shapeOf({
      lat: _metalState.Config.number().required(),
      lng: _metalState.Config.number().required()
    }).value({
      lat: 0,
      lng: 0
    }),

    /**
     * Map to be used
     * @review
     * @type {Object}
     */
    map: _metalState.Config.object().value({})
  };
  window.Liferay = window.Liferay || {};
  window.Liferay.MapMarkerBase = MarkerBase;
  var _default = MarkerBase;
  exports["default"] = _default;
  //# sourceMappingURL=MarkerBase.es.js.map
});
//# sourceMappingURL=MarkerBase.es.js.map