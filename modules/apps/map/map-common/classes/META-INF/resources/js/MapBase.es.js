Liferay.Loader.define("map-common@5.0.0/js/MapBase.es", ['module', 'exports', 'require', 'frontend-js-metal-web$metal-dom', 'frontend-js-metal-web$metal-state', './GeoJSONBase.es', './MarkerBase.es', './validators.es'], function (module, exports, require) {
  var define = undefined;
  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.MapBase = exports["default"] = void 0;

  var _metalDom = require("frontend-js-metal-web$metal-dom");

  var _metalState = _interopRequireWildcard(require("frontend-js-metal-web$metal-state"));

  var _GeoJSONBase = _interopRequireDefault(require("./GeoJSONBase.es"));

  var _MarkerBase = _interopRequireDefault(require("./MarkerBase.es"));

  var _validators = require("./validators.es");

  function _interopRequireDefault(obj) {
    return obj && obj.__esModule ? obj : { "default": obj };
  }

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

  function _get(target, property, receiver) {
    if (typeof Reflect !== "undefined" && Reflect.get) {
      _get = Reflect.get;
    } else {
      _get = function _get(target, property, receiver) {
        var base = _superPropBase(target, property);if (!base) return;var desc = Object.getOwnPropertyDescriptor(base, property);if (desc.get) {
          return desc.get.call(receiver);
        }return desc.value;
      };
    }return _get(target, property, receiver || target);
  }

  function _superPropBase(object, property) {
    while (!Object.prototype.hasOwnProperty.call(object, property)) {
      object = _getPrototypeOf(object);if (object === null) break;
    }return object;
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
   * HTML template string used for generating the home button that is
   * used for centering the map at the user location or the original position.
   * @review
   * @type {string}
   */
  var TPL_HOME_BUTTON = "\n\t<button class='btn btn-default home-button'>\n\t\t<i class='glyphicon glyphicon-screenshot'></i>\n\t</button>\n";
  /**
   * HTML template string used for generating the search box that is used
   * for looking for map locations.
   * @review
   * @type {string}
   */

  var TPL_SEARCH_BOX = "\n\t<div class='col-md-6 search-controls'>\n\t\t<input class='search-input' placeholder='' type='text' />\n\t<div>\n";
  /**
   * Object that will hold callbacks waiting for being executed
   * when maps are created.
   * @review
   * @see MapBase.register()
   * @see MapBase.get()
   */

  var pendingCallbacks = {};
  /**
   * MapBase
   * Each instance represents the map object itself, and adds
   * all necesary listeners and object specified in the given
   * configuration. This class is the core of the module, and
   * will create instances of all the other objects, including
   * the native maps implemented by inheriting classes.
   * @abstract
   * @review
   */

  var MapBase =
  /*#__PURE__*/
  function (_State) {
    _inherits(MapBase, _State);

    /**
     * MapBase constructor
     * @param  {Array} args List of arguments to be sent to State constructor
     * @review
     */
    function MapBase() {
      var _getPrototypeOf2;

      var _this;

      _classCallCheck(this, MapBase);

      for (var _len = arguments.length, args = new Array(_len), _key = 0; _key < _len; _key++) {
        args[_key] = arguments[_key];
      }

      _this = _possibleConstructorReturn(this, (_getPrototypeOf2 = _getPrototypeOf(MapBase)).call.apply(_getPrototypeOf2, [this].concat(args)));
      _this._customControls = {};
      _this._dialog = null;
      _this._eventHandlers = [];
      _this._geoJSONLayer = null;
      _this._geocoder = null;
      _this._geolocationMarker = null;
      _this._map = null;
      _this._originalPosition = null;
      _this._handleGeoJSONLayerFeatureClicked = _this._handleGeoJSONLayerFeatureClicked.bind(_assertThisInitialized(_this));
      _this._handleGeoJSONLayerFeaturesAdded = _this._handleGeoJSONLayerFeaturesAdded.bind(_assertThisInitialized(_this));
      _this._handleGeoLocationMarkerDragended = _this._handleGeoLocationMarkerDragended.bind(_assertThisInitialized(_this));
      _this._handleHomeButtonClicked = _this._handleHomeButtonClicked.bind(_assertThisInitialized(_this));
      _this._handlePositionChanged = _this._handlePositionChanged.bind(_assertThisInitialized(_this));
      _this._handleSearchButtonClicked = _this._handleSearchButtonClicked.bind(_assertThisInitialized(_this));

      _this.on('positionChange', _this._handlePositionChanged);

      var geolocation = _this.position && _this.position.location ? _this.position.location : {};

      if (!geolocation.lat || !geolocation.lng) {
        Liferay.Util.getGeolocation(function (lat, lng) {
          _this._initializeLocation({
            lat: lat,
            lng: lng
          });
        }, function () {
          _this.zoom = 2;

          _this._initializeLocation({
            lat: 0,
            lng: 0
          });
        });
      } else {
        _this._initializeLocation(geolocation);
      }

      return _this;
    }
    /**
     * Destroys the existing _geoJSONLayer and _customControls[SEARCH]
     * @review
     * @see MapBase._initializeMap()
     * @see MapBase._createCustomControls()
     */

    _createClass(MapBase, [{
      key: "destructor",
      value: function destructor() {
        if (this._geoJSONLayer) {
          this._geoJSONLayer.dispose();

          this._geoJSONLayer = null;
        }

        if (this._customControls && this._customControls[this.constructor.CONTROLS.SEARCH]) {
          this._customControls[this.constructor.CONTROLS.SEARCH].dispose();

          this._customControls[this.constructor.CONTROLS.SEARCH] = null;
        }
      }
      /**
       * @protected
       * @review
       *
       * Add event listeners to:
       * @see this._geoJSONLayer
       * @see this._geolocationMarker
       * @see this._customControls
       *
       * All added listeners are implemented as binded methods:
       * @see this._handleGeoJSONLayerFeaturesAdded
       * @see this._handleGeoJSONLayerFeatureClicked
       * @see this._handleGeoLocationMarkerDragended
       * @see this._handleHomeButtonClicked
       * @see this._handleSearchButtonClicked
       */

    }, {
      key: "_bindUIMB",
      value: function _bindUIMB() {
        if (this._geoJSONLayer) {
          this._geoJSONLayer.on('featuresAdded', this._handleGeoJSONLayerFeaturesAdded);

          this._geoJSONLayer.on('featureClick', this._handleGeoJSONLayerFeatureClicked);
        }

        if (this._geolocationMarker) {
          this._geolocationMarker.on('dragend', this._handleGeoLocationMarkerDragended);
        }

        if (this._customControls) {
          var homeControl = this._customControls[this.constructor.CONTROLS.HOME];
          var searchControl = this._customControls[this.constructor.CONTROLS.SEARCH];

          if (homeControl) {
            homeControl.addEventListener('click', this._handleHomeButtonClicked);
          }

          if (searchControl) {
            searchControl.on('search', this._handleSearchButtonClicked);
          }
        }
      }
      /**
       * Creates existing custom controls and stores them inside _customControls.
       * It only adds the home button and the search box if the corresponding
       * flags are activated inside MapBase.controls.
       * @protected
       * @review
       */

    }, {
      key: "_createCustomControls",
      value: function _createCustomControls() {
        var controls = this.controls || [];
        var customControls = {};

        if (controls.indexOf(this.constructor.CONTROLS.HOME) !== -1) {
          var homeControl = (0, _metalDom.buildFragment)(TPL_HOME_BUTTON).querySelector('.btn.btn-default.home-button');
          customControls[this.constructor.CONTROLS.HOME] = homeControl;
          this.addControl(homeControl, this.constructor.POSITION.RIGHT_BOTTOM);
        }

        if (controls.indexOf(this.constructor.CONTROLS.SEARCH) !== -1 && this.constructor.SearchImpl) {
          var searchControl = (0, _metalDom.buildFragment)(TPL_SEARCH_BOX).querySelector('div.col-md-6.search-controls');
          customControls[this.constructor.CONTROLS.SEARCH] = new this.constructor.SearchImpl({
            inputNode: searchControl.querySelector('input')
          });
          this.addControl(searchControl, this.constructor.POSITION.TOP_LEFT);
        }

        this._customControls = customControls;
      }
      /**
       * Creates a new map for the given location and controlsConfig.
       * @abstract
       * @param {Object} location
       * @param {Object} controlsConfig
       * @protected
       * @return {Object} Created map
       * @review
       */

    }, {
      key: "_createMap",
      value: function _createMap(
      /* eslint-disable no-unused-vars */
      location, controlsConfig
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('This method must be implemented');
      }
      /**
       * Returns an object with the control configuration associated to the
       * existing controls (MapBase.controls).
       * @protected
       * @return {Object} Object with the control options with the following shape:
       *  for each control, there is a corresponding [control] attribute with a
       *  boolean value indicating if there is a configuration for the control. If
       *  true, where will be a [control]Options attribute with the configuration
       *  content.
       * @review
       */

    }, {
      key: "_getControlsConfig",
      value: function _getControlsConfig() {
        var _this2 = this;

        var config = {};
        var availableControls = this.controls.map(function (item) {
          return typeof item === 'string' ? item : item.name;
        });
        Object.keys(this.constructor.CONTROLS_MAP).forEach(function (key) {
          var controlIndex = availableControls.indexOf(key);
          var value = _this2.constructor.CONTROLS_MAP[key];

          if (controlIndex > -1) {
            var controlConfig = _this2.controls[controlIndex];

            if (controlConfig && _typeof(controlConfig) === 'object' && controlConfig.cfg) {
              config["".concat(value, "Options")] = controlConfig.cfg;
            }

            config[value] = controlIndex !== -1;
          }
        });
        return config;
      }
      /**
       * If there is an existing this._dialog, it returns it.
       * Otherwise, if the MapBase.DialogImpl class has been set, it creates
       * a new instance with the existing map and returns it.
       * @protected
       * @return {MapBase.DialogImpl|null}
       * @review
       */

    }, {
      key: "_getDialog",
      value: function _getDialog() {
        if (!this._dialog && this.constructor.DialogImpl) {
          this._dialog = new this.constructor.DialogImpl({
            map: this._map
          });
        }

        return this._dialog;
      }
      /**
       * If there is an existing this._geocoder, it returns it.
       * Otherwise, if the MapBase.GeocoderImpl class has been set, it creates
       * a new instance and returns it.
       * @protected
       * @return {MapBase.GeocoderImpl|null}
       * @review
       */

    }, {
      key: "_getGeocoder",
      value: function _getGeocoder() {
        if (!this._geocoder && this.constructor.GeocoderImpl) {
          this._geocoder = new this.constructor.GeocoderImpl();
        }

        return this._geocoder;
      }
      /**
       * Event handler executed when any feature is added to the existing.
       * GeoJSONLayer. It will update the current position if necesary.
       * @param {{ features: Array<Object> }} param0 Array of features that
       *  will be processed.
       * @protected
       * @review
       * @see MapBase.getBounds()
       * @see MapBase.position
       */

    }, {
      key: "_handleGeoJSONLayerFeaturesAdded",
      value: function _handleGeoJSONLayerFeaturesAdded(_ref) {
        var features = _ref.features;
        var bounds = this.getBounds();
        var locations = features.map(function (feature) {
          return feature.getGeometry().get();
        });

        if (locations.length > 1) {
          locations.forEach(function (location) {
            return bounds.extend(location);
          });
        } else {
          this.position = {
            location: locations[0]
          };
        }
      }
      /**
       * Event handler executed when a GeoJSONLayer feature is clicked. It
       * simple propagates the event with the given feature.
       * @param {{ feature: Object }} param0 Feature to be propagated.
       * @protected
       * @review
       */

    }, {
      key: "_handleGeoJSONLayerFeatureClicked",
      value: function _handleGeoJSONLayerFeatureClicked(_ref2) {
        var feature = _ref2.feature;
        this.emit('featureClick', {
          feature: feature
        });
      }
      /**
       * Event handler executed when the geolocation marker has been dragged to
       * a new position. It updates the instance position.
       * @param {{ location: Object }} param0 New marker location.
       * @protected
       * @review
       * @see MapBase._getGeoCoder()
       * @see MapBase.position
       */

    }, {
      key: "_handleGeoLocationMarkerDragended",
      value: function _handleGeoLocationMarkerDragended(_ref3) {
        var _this3 = this;

        var location = _ref3.location;

        this._getGeocoder().reverse(location, function (_ref4) {
          var data = _ref4.data;
          _this3.position = data;
        });
      }
      /**
       * Event handler executed when the home button GeoJSONLayer feature is
       * clicked. It resets the instance position to _originalPosition and stops
       * the event propagation.
       * @param {Event} event Click event.
       * @review
       * @see MapBase.position
       * @see MapBase._originalPosition
       */

    }, {
      key: "_handleHomeButtonClicked",
      value: function _handleHomeButtonClicked(event) {
        event.preventDefault();
        this.position = this._originalPosition;
      }
      /**
       * Event handler executed when the user position changes. It centers the map
       * and, if existing, updates the _geolocationMarker position.
       * @param {{ newVal: { location: Object } }} param0 New location information.
       * @review
       * @see MapBase.setCenter()
       * @see MapBase._geolocationMarker
       */

    }, {
      key: "_handlePositionChanged",
      value: function _handlePositionChanged(_ref5) {
        var location = _ref5.newVal.location;
        this.setCenter(location);

        if (this._geolocationMarker) {
          this._geolocationMarker.setPosition(location);
        }
      }
      /**
       * Event handler executed when the search button GeoJSONLayer feature has
       * been clicked. It updates the instance position.
       * @param {{ position: Object }} param0 New position.
       * @review
       * @see MapBase.position
       */

    }, {
      key: "_handleSearchButtonClicked",
      value: function _handleSearchButtonClicked(_ref6) {
        var position = _ref6.position;
        this.position = position;
      }
      /**
       * If this.data has a truthy value and this._geoJSONLayer has been
       * set, it tries to parse geoJSON information with _geoJSONLayer.addData()
       * @protected
       * @review
       * @see this._geoJSONLayer
       * @see this.data
       */

    }, {
      key: "_initializeGeoJSONData",
      value: function _initializeGeoJSONData() {
        if (this.data && this._geoJSONLayer) {
          this._geoJSONLayer.addData(this.data);
        }
      }
      /**
       * Initializes the instance map using the given location and, if
       * this.geolocation property is true, tries to get the location using
       * the geocoder.
       * @param {Object} location Location object user for map initialization.
       * @protected
       * @review
       * @see this._initializeMap()
       * @see this._getGeocoder()
       */

    }, {
      key: "_initializeLocation",
      value: function _initializeLocation(geolocation) {
        var _this4 = this;

        var geocoder = this._getGeocoder();

        if (this.geolocation && geocoder) {
          geocoder.reverse(geolocation, function (_ref7) {
            var data = _ref7.data;
            return _this4._initializeMap(data);
          });
        } else {
          this._initializeMap({
            location: geolocation
          });
        }
      }
      /**
       * Creates a new map with the given position and initialize the map
       * controls, loads the geoJSONData and, if geolocation is active, creates
       * a marker for it.
       * @param {Object} position Initial position added to the map.
       * @protected
       * @review
       * @see MapBase._getControlsConfig()
       * @see MapBase._createMap()
       * @see MapBase.GeoJSONImpl
       * @see MapBase.addMarker()
       * @see MapBase._createCustomControls()
       * @see MapBase._bindUIMB()
       * @see MapBase._initializeGeoJSONData()
       */

    }, {
      key: "_initializeMap",
      value: function _initializeMap(position) {
        var controlsConfig = this._getControlsConfig();

        var geolocation = position.location;
        this._originalPosition = position;
        this._map = this._createMap(geolocation, controlsConfig);

        if (this.constructor.GeoJSONImpl && this.constructor.GeoJSONImpl !== _GeoJSONBase["default"]) {
          this._geoJSONLayer = new this.constructor.GeoJSONImpl({
            map: this._map
          });
        }

        if (this.geolocation) {
          this._geolocationMarker = this.addMarker(geolocation);
        }

        this.position = position;

        this._createCustomControls();

        this._bindUIMB();

        this._initializeGeoJSONData();
      }
      /**
       * Adds a new control to the interface at the given position.
       * @param {Object} control Native control object
       * @param {MapBase.POSITION} position Position defined in MapBase class
       * @review
       */

    }, {
      key: "addControl",
      value: function addControl(
      /* eslint-disable no-unused-vars */
      control, position
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('This method must be implemented');
      }
      /**
       * Returns the map bounds.
       * @abstract
       * @return {Object} Map bounds
       * @review
       */

    }, {
      key: "getBounds",
      value: function getBounds() {
        throw new Error('This method must be implemented');
      }
      /**
       * Centers the map on the given location.
       * @abstract
       * @param {Object} location
       * @review
       */

    }, {
      key: "setCenter",
      value: function setCenter(
      /* eslint-disable no-unused-vars */
      location
      /* eslint-enable no-unused-vars */
      ) {
        throw new Error('This method must be implemented');
      }
      /**
       * If the class MapBase.MarkerImpl has been specified, creates an instance
       * of this class with the given location and the existing this._map object
       * and returns it.
       * @param {Object} location Location object used for the marker position
       * @return {MapBase.MarkerImpl}
       * @review
       */

    }, {
      key: "addMarker",
      value: function addMarker(location) {
        var marker;

        if (this.constructor.MarkerImpl && this.constructor.MarkerImpl !== _MarkerBase["default"]) {
          marker = new this.constructor.MarkerImpl({
            location: location,
            map: this._map
          });
        }

        return marker;
      }
      /**
       * Returns the stored map
       * @return {Object}
       * @review
       * @see MapBase._initializeMap()
       */

    }, {
      key: "getNativeMap",
      value: function getNativeMap() {
        return this._map;
      }
      /**
       * Adds a listener for the given event using the given context. This
       * methods uses MetalJS' functionality, but overrides the context binding
       * in order to avoid breaking changes with the old implementation.
       * @param {string} eventName Event name that will be listened.
       * @param {function} callback Callback executed when the event fires.
       * @param {Object} [context] Optional context that will be used for binding
       *  the callback when specified.
       * @return {*} Result of the State.on method.
       * @review
       * @see State.on
       */

    }, {
      key: "on",
      value: function on(eventName, callback, context) {
        var boundCallback = callback;

        if (context) {
          boundCallback = callback.bind(context);
        }

        return _get(_getPrototypeOf(MapBase.prototype), "on", this).call(this, eventName, boundCallback);
      }
      /**
       * Opens a dialog if this_getDialog() returns a valid object.
       * @param {*} dialogConfig Dialog configuration that will be sent to the
       *  dialog.open() method.
       * @review
       * @see MapBase._getDialog()
       */

    }, {
      key: "openDialog",
      value: function openDialog(dialogConfig) {
        var dialog = this._getDialog();

        if (dialog) {
          dialog.open(dialogConfig);
        }
      }
      /**
       * Setter called everytime the position attribute is changed.
       * @param {Object} position New position
       * @return {Object} The given position object
       * @review
       */

    }, {
      key: "setPosition",
      value: function setPosition(position) {
        this.emit('positionChange', {
          newVal: {
            address: position.address,
            location: position.location
          }
        });
        return position;
      }
    }]);

    return MapBase;
  }(_metalState["default"]);
  /**
   * Registers the given callback to be executed when the map identified
   * by the given id has been created. If the map has already been created, it
   * is executed immediatly.
   * @param {string} id Id of the map that needs to be created
   * @param {function} callback Callback being executed
   * @review
   */

  exports.MapBase = MapBase;

  MapBase.get = function (id, callback) {
    var map = Liferay.component(id);

    if (map) {
      callback(map);
    } else {
      var idPendingCallbacks = pendingCallbacks[id] || [];
      idPendingCallbacks.push(callback);
      pendingCallbacks[id] = idPendingCallbacks;
    }
  };
  /**
   * Registers the given map with the given id, and executes all existing
   * callbacks associated with the id. Then it clears the list of callbacks.
   * @param {string} id Id of the map that has been created
   * @param {Object} map Map that has been created
   * @param {string} portletId Id of the portlet that registers the map
   * @review
   */

  MapBase.register = function (id, map, portletId) {
    var componentConfig = portletId ? {
      portletId: portletId
    } : {
      destroyOnNavigate: true
    };
    Liferay.component(id, map, componentConfig);
    var idPendingCallbacks = pendingCallbacks[id];

    if (idPendingCallbacks) {
      idPendingCallbacks.forEach(function (callback) {
        return callback(map);
      });
      idPendingCallbacks.length = 0;
    }
  };
  /**
   * Class that will be used for creating dialog objects.
   * @review
   */

  MapBase.DialogImpl = null;
  /**
   * Class that will be used for parsing geoposition information.
   * @review
   */

  MapBase.GeocoderImpl = null;
  /**
   * Class that will be used for creating GeoJSON instances.
   * This class must be replaced by another one extending GeoJSONBase.
   * @review
   */

  MapBase.GeoJSONImpl = _GeoJSONBase["default"];
  /**
   * Class that will be used for creating map markers.
   * This class must be replaced by another one extending MarkerBase.
   * @review
   */

  MapBase.MarkerImpl = _MarkerBase["default"];
  /**
   * Class that will be used for creating an instance of searchbox.
   * This class must be replaced by another one extending MarkerBase.
   * @review
   */

  MapBase.SearchImpl = null;
  /**
   * List of controls that maybe shown inside the rendered map.
   * @review
   */

  MapBase.CONTROLS = {
    ATTRIBUTION: 'attribution',
    GEOLOCATION: 'geolocation',
    HOME: 'home',
    OVERVIEW: 'overview',
    PAN: 'pan',
    ROTATE: 'rotate',
    SCALE: 'scale',
    SEARCH: 'search',
    STREETVIEW: 'streetview',
    TYPE: 'type',
    ZOOM: 'zoom'
  };
  /**
   * Control mapping that should be overriden by child classes.
   * @review
   */

  MapBase.CONTROLS_MAP = {};
  /**
   * Available map positions.
   * @review
   */

  MapBase.POSITION = {
    BOTTOM: 11,
    BOTTOM_CENTER: 11,
    BOTTOM_LEFT: 10,
    BOTTOM_RIGHT: 12,
    CENTER: 13,
    LEFT: 5,
    LEFT_BOTTOM: 6,
    LEFT_CENTER: 4,
    LEFT_TOP: 5,
    RIGHT: 7,
    RIGHT_BOTTOM: 9,
    RIGHT_CENTER: 8,
    RIGHT_TOP: 7,
    TOP: 2,
    TOP_CENTER: 2,
    TOP_LEFT: 1,
    TOP_RIGHT: 3
  };
  /**
   * Position mapping that should be overriden by child classes.
   * @review
   */

  MapBase.POSITION_MAP = {};
  /**
   * State definition.
   * @review
   * @static
   * @type {!Object}
   */

  MapBase.STATE = {
    /**
     * DOM node selector identifying the element that will be used
     * for rendering the map
     * @review
     * @type {string}
     */
    boundingBox: _metalState.Config.string().value(''),

    /**
     * List of controls that will be shown on the map.
     * The full control list is kept inside MapBase.CONTROLS.
     * @review
     * @type {Array<string>}
     */
    controls: _metalState.Config.validator((0, _validators.isSubsetOf)(Object.values(MapBase.CONTROLS))).value([MapBase.CONTROLS.PAN, MapBase.CONTROLS.TYPE, MapBase.CONTROLS.ZOOM]),

    /**
     * Data that will be parsed as GeoJSONData
     * @review
     * @type {Object}
     */
    data: _metalState.Config.object(),

    /**
     * If true, the geolocation API will be used (if implemented)
     * @review
     * @type {boolean}
     */
    geolocation: _metalState.Config.bool().value(false),

    /**
     * Position being shown on the map. This value will be updated
     * if the position is changed internally.
     * @review
     * @type {{ lat: number, lng: number }}
     */
    position: _metalState.Config.shapeOf({
      location: _metalState.Config.shapeOf({
        lat: _metalState.Config.number().value(0),
        lng: _metalState.Config.number().value(0)
      })
    }).value({
      location: {
        lat: 0,
        lng: 0
      }
    }).setter('setPosition'),

    /**
     * Zoom being used on the map.
     * @review
     * @type {number}
     */
    zoom: _metalState.Config.number().value(11)
  };
  Liferay.MapBase = MapBase;
  var _default = MapBase;
  exports["default"] = _default;
  //# sourceMappingURL=MapBase.es.js.map
});
//# sourceMappingURL=MapBase.es.js.map