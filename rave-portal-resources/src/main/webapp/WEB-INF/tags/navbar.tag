<%--
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ attribute name="pageTitle" required="false" description="The title of the page" %>
<fmt:setBundle basename="messages"/>
<script type='text/javascript' >
    window.currentGroup = "";
</script>
<c:if test="${not empty topnav}">
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container">
                    <%--@elvariable id="topnav" type="org.apache.rave.portal.web.model.NavigationMenu"--%>
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <span class="brand"><c:out value="${pageTitle}"/></span>
                <div class="nav-collapse">
                    <ul class="nav pull-right">
                            <%--@elvariable id="navItem" type="org.apache.rave.portal.web.model.NavigationItem"--%>
                        <c:forEach items="${topnav.navigationItems}" var="navItem">
                            <c:choose>
                                <c:when test="${navItem.name=='page.profile.friend.requests'}">
                                    <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle friendRequestDropdownLink"><fmt:message key="${navItem.name}"/>(${navItem.nameParam})</a>
                                        <c:choose>
                                            <c:when test="${navItem.hasChildren}">
                                                <ul class="dropdown-menu friendRequestDropdown">
                                                    <c:forEach items="${navItem.childNavigationItems}" var="childItem">
                                                        <li class="requestItem"><c:out value="${childItem.name}" />
                                                            <a class="acceptFriendRequest" id="${childItem.nameParam}" href="#"><i class="icon-ok"></i></a>
                                                            <a class="declineFriendRequest" id="${childItem.nameParam}" href="#"><i class="icon-remove"></i></a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </c:when>
                                            <c:otherwise>
                                                <ul class="dropdown-menu">
                                                    <li>No Friend Requests</li>
                                                </ul>
                                            </c:otherwise>
                                        </c:choose>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <sec:authorize url="${navItem.url}">
                                        <c:choose>
                                            <c:when test="${not empty navItem.nameParam}">
                                                <li><a href="<spring:url value="${navItem.url}"/>"><fmt:message key="${navItem.name}">
                                                    <fmt:param><c:out value="${navItem.nameParam}"/></fmt:param>
                                                </fmt:message></a></li>
                                            </c:when>
                                            <c:otherwise><li><a href="<spring:url value="${navItem.url}"/>"><fmt:message key="${navItem.name}"/></a></li></c:otherwise>
                                        </c:choose>
                                    </sec:authorize>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-bottom:10px">
        <div class="logo-wrapper">
            <c:forEach items="${topnav.navigationItems}" var="navItem">
                <c:choose>
                    <c:when test="${navItem.name=='groups'}">
                        <select id="groupSelector">
                            <option value="_select_group_">Select your group</option>
                            <c:forEach items="${navItem.childNavigationItems}" var="childItem">
                                <option value="${childItem.name}">${childItem.nameParam}</option>
                            </c:forEach>
                        </select>
                    </c:when>
                </c:choose>
            </c:forEach>
        </div>

        <div class="group-context-wrapper">
            <c:choose>
                <c:when test="${!empty GROUP_DISPLAYNAME}">
                    <span class="group-context"><c:out value="${GROUP_DISPLAYNAME}"/></span>
                </c:when>
            </c:choose>
        </div>
        <div style="clear:both"></div>
    </div>

</c:if>
