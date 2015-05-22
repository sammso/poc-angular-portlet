(function(Liferay, angular) {
	angular.portlet.add("poc-angular-portlet", "poc-angular-portlet",
		function() {
			var myModule = angular.module("myModule", []);
			myModule.controller("MyController", ['$scope', function($scope) {
				$scope.mythings = [ {
					name : "Thing 1"
				}, {
					name : "Thing 2"
				} ];

				$scope.add = function() {
					$scope.mythings.push({name: $scope.newThing.name});
				};

				$scope.remove = function(index) {
					$scope.mythings.splice(index, 1);
				};
			}]);
			myModule.controller("MyCounter", ['$scope', function($scope) {
				$scope.counter = 1;

				$scope.decrease = function() {
					if ($scope.counter > 0) {
						$scope.counter--;
					}
				};

				$scope.increase = function(index) {
					if ($scope.counter < 100) {
						$scope.counter++;
					}
				};
			}]);
			return [ myModule.name ];
		});
})(Liferay, angular);