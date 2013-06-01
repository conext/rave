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
<%-- Common footer --%>
<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="span4">
                <a href="http://www.jiscadvance.biz"><img class="footer-logo" alt="JISC Advance" title="JISC Advance" src="<c:url value="/static/images/JISCAdvanceLogo.png" />" /></a>
            </div>
            <div class="span8 version">
                <span>Conext is a Jisc initiative to promote effective online collaboration in all sectors. Version ${applicationProperties['portal.version']}</span>
            </div>
        </div>
    </div>
</footer>