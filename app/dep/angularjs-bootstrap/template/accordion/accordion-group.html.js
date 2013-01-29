angular.module("template/accordion/accordion-group.html", []).run(["$templateCache", function($templateCache){
  $templateCache.put("template/accordion/accordion-group.html",
    "<div class=\"accordion-group\">" +
    "    <div class=\"accordion-heading\">" +
    "        <a class=\"accordion-toggle\" ng-click=\"toggle()\">{{heading}}</a>" +
    "    </div>" +
    "    <div class=\"accordion-body collapse\" ng-class=\"{in : selected}\">" +
    "        <div class=\"accordion-inner\" ng-transclude></div>" +
    "    </div>" +
    "</div>");
}]);
