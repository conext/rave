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
<%@ taglib tagdir="/WEB-INF/tags" prefix="rave" %>
<jsp:useBean id="widget" scope="request" class="org.apache.rave.portal.model.Widget"/>
<fmt:setBundle basename="messages"/>
<rave:rave_generic_page pageTitle="${widget.title}">
    <div id="header">
        <div class="header-a">
        <span class="backToPage">
            <a href="<spring:url value="/index.html" />"><fmt:message key="page.general.back"/></a>
        </span>
        </div>
        <c:if test="${not empty referringPageId}">
            <div class="widget-a">
            <span>
                <a href="<spring:url value="/app/store?referringPageId=${referringPageId}" />">
                    <fmt:message key="page.widget.backToStore"/>
                </a>
            </span>
            </div>
        </c:if>
        <h1><c:out value="${widget.title}"/></h1>
    </div>


    <div id="content">
        <div id="widget-content">

            <div class="widgetDetailLeft">
                <c:if test="${not empty widget.thumbnailUrl}">
                    <img class="storeWidgetThumbnail"
                         src="<c:out value="${widget.thumbnailUrl}"/>"
                         title="<c:out value="${widget.title}"/>"
                         alt="<fmt:message key="page.general.thumbnail"/>"
                         width="120" height="60"/>
                </c:if>

                <div class="widgetDetailMeta">
                    <p><fmt:message key="widget.type.${widget.type}" /></p>
                </div>
            </div>

            <div class="widgetDetailCenter">

                <div class="storeWidgetDetail">
                    <span class="secondaryPageItemTitle"><c:out value="${widget.title}"/></span>
                    <c:choose>
                        <c:when test="${widget.widgetStatus eq 'PUBLISHED'}">
                            <div id="widgetAdded_${widget.id}" class="storeButton">
                                <button class="storeItemButton"
                                        id="addWidget_${widget.id}"
                                        onclick="rave.api.rpc.addWidgetToPage({widgetId: ${widget.id}, pageId: ${referringPageId}});">
                                    <fmt:message key="page.widget.addToPage"/>
                                </button>
                            </div>
                        </c:when>
                        <c:when test="${widget.widgetStatus eq 'PREVIEW'}">
                            <p class="warn"><fmt:message key="widget.widgetStatus.PREVIEW"/></p>
                        </c:when>
                    </c:choose>
                </div>


                <c:if test="${not empty widget.author}">
                    <p class="storeWidgetAuthor">
                        <fmt:message key="widget.author"/> <c:out value="${widget.author}"/>
                    </p>
                </c:if>

                <c:if test="${not empty widget.description}">
                    <p class="storeWidgetDesc"><c:out value="${widget.description}"/></p>
                </c:if>
            </div>
            
            <div class="widgetDetailRight">
                <c:if test="${not empty widget.screenshotUrl}">
                    <div class="widgetScreenshotTitle"><fmt:message key="page.widget.widgetPreview"/></div>
                    <div class="widgetScreenshot">
                        <img src="${widget.screenshotUrl}"
                             alt="<fmt:message key="page.general.screenshot"/>"
                             title="<c:out value="${widget.title}"/> <fmt:message key="page.general.screenshot"/>"/>
                    </div>
                </c:if>
            </div>
            <div class="clear-float" >&nbsp;</div>
        </div>
    </div>
    <script>
        var rave = rave || {
            getContext : function() {
                return "<spring:url value="/app/" />";
            }
        }
    </script>
    <script src="//ajax.aspnetcdn.com/ajax/jQuery/jquery-1.6.1.min.js"></script>
    <script src="<spring:url value="/script/rave_api.js"/>"></script>

</rave:rave_generic_page>
