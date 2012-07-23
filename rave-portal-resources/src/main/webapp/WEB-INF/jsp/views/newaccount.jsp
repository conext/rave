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
<%@ page language="java" trimDirectiveWhitespaces="true" %>
<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>
<fmt:setBundle basename="messages"/>

<%-- Override the default pageTitleKey and then export it to the request scope for use later on this page --%>
<tiles:putAttribute name="pageTitleKey" value="page.newaccount.title"/>
<tiles:importAttribute name="pageTitleKey" scope="request"/>

<header>
    <nav>
        <div class="navbar navbar-fixed-top">
            <div class="container">
                <a href="/" class="brand">RAVE</a>
                <ul class="nav pull-right">
                    <li class="divider-vertical"></li>
                    <li>
                        <form class="form-inline" action="<c:url value="/app/newpassword"/>" method="get">
                            <fmt:message key="page.login.forgot.password.button" var="requestNewPasswordButtonText"/>
                            <button class="btn btn-info" id="requestNewPasswordButton" type="submit" value="${requestNewPasswordButtonText}">${requestNewPasswordButtonText}</button>
                        </form>
                    </li>
                    <li class="divider-vertical"></li>
                    <li>
                        <form class="form-inline " action="<c:url value="/app/retrieveusername"/>" method="get">
                            <fmt:message key="page.login.forgot.username.button" var="requestNewUsernameButton"/>
                            <button class="btn btn-info" id="requestNewUsernameButton" type="submit" value="${requestNewUsernameButton}">${requestNewUsernameButton}</button>
                        </form>
                    </li>
                    <li class="divider-vertical"></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<br><br>
<div class="container navbar-spacer">
    <h1>${pagetitle}</h1>

    <!-- Login information (required) -->
    <h2><fmt:message key="page.general.login.information"/></h2>
    <%@ include file="/WEB-INF/jsp/views/includes/new_user_form.jsp" %>
</div>

<portal:register-init-script location="${'AFTER_RAVE'}">
    <script>
        $(document).ready(rave.forms.validateNewAccountForm());
    </script>
</portal:register-init-script>