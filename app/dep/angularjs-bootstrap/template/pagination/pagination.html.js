angular.module("template/pagination/pagination.html", []).run(["$templateCache", function($templateCache){
  $templateCache.put("template/pagination/pagination.html",
    "<div class=\"pagination\"><ul>" +
    "  <li ng-class=\"{disabled: noPrevious()}\"><a ng-click=\"selectPrevious()\">Previous</a></li>" +
    "  <li ng-repeat=\"page in pages\" ng-class=\"{active: isActive(page)}\"><a ng-click=\"selectPage(page)\">{{page}}</a></li>" +
    "  <li ng-class=\"{disabled: noNext()}\"><a ng-click=\"selectNext()\">Next</a></li>" +
    "  </ul>" +
    "</div>" +
    "");
}]);
