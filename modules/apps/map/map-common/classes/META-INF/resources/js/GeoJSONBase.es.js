Liferay.Loader.define("map-common@5.0.0/js/GeoJSONBase.es", ['module', 'exports', 'require', 'frontend-js-metal-web$metal-state'], function (module, exports, require) {
  var define = undefined;
  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.GeoJSONBase = exports["default"] = void 0;

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
   * GeoJSONBase
   * Allows adding controls (called features) to the map, that produce
   * diverse actions. For example, a button for centering the map
   * view will act as a feature.
   * @abstract
   * @review
   */
  var GeoJSONBase =
  /*#__PURE__*/
  function (_State) {
    _inherits(GeoJSONBase, _State);

    function GeoJSONBase() {
      _classCallCheck(this, GeoJSONBase);

      return _possibleConstructorReturn(this, _getPrototypeOf(GeoJSONBase).apply(this, arguments));
    }

    _createClass(GeoJSONBase, [{
      key: "addData",

      /**
       * Receives an object with native features data and tries
       * to parse it with the implemented method _getNativeFeatures.
       * If the generated Array of native features is not empty, it fires
       * a 'featuresAdded' event.
       * @param {Object} nativeFeaturesData Data to be processed.
       * @review
       */
      value: function addData(nativeFeaturesData) {
        var nativeFeatures = this._getNativeFeatures(nativeFeaturesData);

        if (nativeFeatures.length > 0) {
          this.emit('featuresAdded', {
            features: nativeFeatures.map(this._wrapNativeFeature)
          });
        }
      }
      /**
       * Callback executed when a native feature has been clicked.
       * It receives the feature as parameter, and emits a 'featureClick'
       * event with the wrapped feature as event data.
       * @param {Object} nativeFeature Feature to be wrapped and sent
       * @protected
       * @review
       */

    }, {
      key: "_handleFeatureClicked",
      value: function _handleFeatureClicked(nativeFeature) {
        this.emit('featureClick', {
          feature: this._wrapNativeFeature(nativeFeature)
        });
      }
      /**
       * Parses an object and return an array of the
       * parsed features. If no feature has been parsed it may return an
       * empty array.
       * @abstract
       * @param {Object} nativeFeaturesData
       * @protected
       * @return {Object[]} List of native features to be added
       * @review
       */

    }, {
      key: "_getNativeFeatures",
      value: function _getNativeFeatures(
      /* eslint-disable no-unused-vars */
      nativeFeaturesData
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('Must be implemented');
      }
      /**
       * Wraps a native feature.
       * @abstract
       * @param {Object} nativeFeature
       * @protected
       * @return {Object} Wrapped native feature
       * @review
       */

    }, {
      key: "_wrapNativeFeature",
      value: function _wrapNativeFeature(
      /* eslint-disable no-unused-vars */
      nativeFeature
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('Must be implemented');
      }
    }]);

    return GeoJSONBase;
  }(_metalState["default"]);
  /**
   * State definition.
   * @review
   * @static
   * @type {!Object}
   */

  exports.GeoJSONBase = GeoJSONBase;
  GeoJSONBase.STATE = {
    /**
     * Map to be used
     * @review
     * @type {Object}
     */
    map: _metalState.Config.object()
  };
  window.Liferay = window.Liferay || {};
  window.Liferay.MapGeojsonBase = GeoJSONBase;
  var _default = GeoJSONBase;
  exports["default"] = _default;
  //# sourceMappingURL=GeoJSONBase.es.js.map
});
//# sourceMappingURL=GeoJSONBase.es.js.map