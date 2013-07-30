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
<%--
     This file includes references to all external third party javascript libraries required by rave
     Overlay this file in custom extensions of Rave if you host these libraries internally and don't need
     to pull them in externally.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%-- json script --%>
<script src="//cdnjs.cloudflare.com/ajax/libs/json2/20110223/json2.js"></script>
<%-- underscore --%>
<script src="//cdnjs.cloudflare.com/ajax/libs/underscore.js/1.4.4/underscore-min.js"></script>
<%-- jquery scripts --%>
<script src="//ajax.aspnetcdn.com/ajax/jquery/jquery-1.7.2.min.js"></script>
<script src="<spring:url value="/static/script/jquery.urldecoder.min.js"/>"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.ui/1.8.17/jquery-ui.min.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.8.1/jquery.validate.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-hashchange/v1.3/jquery.ba-hashchange.min.js"></script>
<%-- Touch devices --%>
<script src="//cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.2/jquery.ui.touch-punch.min.js"></script>
<%-- backbone --%>
<script src="//cdnjs.cloudflare.com/ajax/libs/backbone.js/0.9.10/backbone-min.js"></script>
<%-- bootstrap --%>
<script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.0.3/bootstrap.min.js"></script>
<%-- handelbars --%>
<script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/1.0.rc.2/handlebars.min.js"></script>
<%-- google code css3 mediaqueries script --%>
<!--[if lt IE 9]><script src="//css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script><![endif]-->

<script lang="javascript">

    <c:choose>
    <c:when test="${!empty GROUPCONTEXT}" >
    var currentGroup = '<c:out value="${GROUPCONTEXT}"/>';
    </c:when>
    <c:otherwise>
    var currentGroup = false;
    </c:otherwise>
    </c:choose>

    var e = document.getElementById("groupSelector");
    if (currentGroup) {
        if (e != null) {
            for(var i = 0, j = e.options.length; i < j; ++i) {
                if(e.options[i].value === currentGroup) {
                    e.selectedIndex = i;
                    break;
                }
            }
        }
    } else {
        e.selectedIndex = 0;
    }

    var publishEvent = function() {

        var elements = document.getElementsByClassName('widget');
        for (var i=0;i<elements.length;i++) {
            if (elements[i].firstChild) {
                var iframe = elements[i].firstChild.contentWindow;
                iframe.postMessage(currentGroup, "${portal.opensocial_engine.root}");
            }
        }
    };

    $('#groupSelector').change(function() {
        if (e.selectedIndex > 0) {
            var selected_value = e.options[e.selectedIndex].value;
            window.location.href = "/portal/app/page/view/group/" + encodeURIComponent(selected_value);
        } else {
            window.location.href = "/portal/";
        }
    });
    window.addEventListener("message", function(e){
        publishEvent();
    }, false);
</script>

