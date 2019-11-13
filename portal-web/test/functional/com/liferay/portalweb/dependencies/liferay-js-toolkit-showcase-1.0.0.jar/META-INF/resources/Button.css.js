var link = document.createElement("link");
link.setAttribute("rel", "stylesheet");
link.setAttribute("type", "text/css");
link.setAttribute("href", Liferay.ThemeDisplay.getPathContext() + "/o/liferay-js-toolkit-showcase/Button.css");

function defineModule() {
  Liferay.Loader.define("liferay-js-toolkit-showcase@1.0.0/Button.css", ['module', 'exports', 'require'], function (module, exports, require) {
    var define = undefined;

    module.exports = link;
  });
}

link.onload = defineModule;

link.onerror = function () {
  console.warn('Unable to load /o/liferay-js-toolkit-showcase/Button.css. However, its .js module will still be defined to avoid breaking execution flow (expect some visual degradation).');
  defineModule();
};

document.querySelector("head").appendChild(link);
//# sourceMappingURL=Button.css.js.map