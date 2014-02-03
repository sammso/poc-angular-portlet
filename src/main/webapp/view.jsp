<%--
/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<div ng-controller="MyController" ng-cloak>
    <h1>My Things</h1>
    <input ng-model="newThing.name"/>
    <button ng-click="add();">Add</button>
    <div ng-repeat="mything in mythings">
        <span>{{mything.name}}</span>
        <button ng-click="remove($index);">Remove</button>
    </div>
</div>
<div ng-controller="MyCounter" ng-cloak>
	<h1>Counter</h1>
    <h1><button ng-click="decrease();">&lt;</button>{{counter}}<button ng-click="increase();">&gt;</button></h1>
</div>