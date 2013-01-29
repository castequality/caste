angular.module("template/carousel/slide.html", []).run(["$templateCache", function($templateCache){
  $templateCache.put("template/carousel/slide.html",
    "<div ng-class=\"{" +
    "    'active': active, " +
    "    'prev': sliding && direction=='prev'," +
    "    'next': sliding && direction=='next'," +
    "    'right': direction=='prev'," +
    "    'left': direction=='next'" +
    "  }\" class=\"item\" ng-transclude></div>" +
    "");
}]);
