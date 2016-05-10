
<%@include file="Header.jsp"%>

<script>
	var app = angular.module("search", []).controller("TableCtrl",
			function($scope) {

				$scope.data = $access;
				
			});
</script>
${access}
 <div ng-app="search" ng-controller="TableCtrl"> 

<ul>
  <li ng-repeat="x in data">
    {{ x.name }}
  </li>
</ul>

</div>





