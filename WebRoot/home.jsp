<!--
  ~ Copyright 2011-2014 the University of New Mexico.
  ~
  ~ This work was supported by National Science Foundation Cooperative
  ~ Agreements #DEB-0832652 and #DEB-0936498.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~ http://www.apache.org/licenses/LICENSE-2.0.
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
  ~ either express or implied. See the License for the specific
  ~ language governing permissions and limitations under the License.
  -->

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="edu.lternet.pasta.common.CalendarUtility" %>
<%@ page import="edu.lternet.pasta.portal.ConfigurationListener" %>
<%@ page import="edu.lternet.pasta.portal.DataPortalServlet" %>
<%@ page import="edu.lternet.pasta.portal.PastaStatistics"%>
<%@ page import="edu.lternet.pasta.portal.search.LTERTerms"%>
<%@ page import="edu.lternet.pasta.portal.statistics.GrowthStats"%>

<%@ include file="context-reader.jsp" %>

<%
	final String pageTitle = "Home";
	final String titleText = DataPortalServlet.getTitleText(pageTitle);
	session.setAttribute("menuid", "home");

	String uid = (String) session.getAttribute("uid");
	if (uid == null || uid.isEmpty()) {
		uid = "public";
	}

    final String downtime = (String) ConfigurationListener.getOptions().getProperty("dataportal.downtime.dayOfWeek");
    HttpSession httpSession = request.getSession();
    String downtimeHTML = "";

    if (downtime != null && !downtime.isEmpty()) {
        String today = CalendarUtility.todaysDayOfWeek();
        if (today != null && today.equalsIgnoreCase(downtime)) {
            StringBuilder sb = new StringBuilder();
            sb.append(String.format("The Data Portal and PASTA+ services will be unavailable on %s evening from 7-9 pm Mountain Time for scheduled weekly maintenance.",
                                    downtime));
            downtimeHTML = String.format("<div class=\"alert alert-warning mt-4\" role=\"alert\"<em>Please Note: </em>%s</div>", sb.toString());
        }
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- common <head> tag elements -->
    <jsp:include page="common-head.jsp">
        <jsp:param name="siteName" value="<%= siteName %>" />
    </jsp:include>
</head>

<body>

<!-- incude main ASU Header-->
<jsp:include page="asu-header.jsp">
    <jsp:param name="siteAsuTitle" value="<%= siteAsuTitle %>" />
    <jsp:param name="siteAsuSubtitle" value="<%= siteAsuSubtitle %>" />
    <jsp:param name="siteAsuTitleLink" value="<%= siteAsuTitleLink %>" />
    <jsp:param name="siteAsuSubtitleLink" value="<%= siteAsuSubtitleLink %>" />
</jsp:include>

<!-- main navigation menu -->
<jsp:include page="<%= menuInclude %>" flush="true">
    <jsp:param name="homePageUrl" value="<%= homePageUrl %>" />
</jsp:include>


<jsp:include page="<%= contentInclude %>" flush="true">
    <jsp:param name="siteName" value="<%= siteName %>" />
</jsp:include>


<div class="footer">
	<jsp:include page="<%= bigFooterInclude %>" />
	<jsp:include page="asu-footer.jsp" />
</div>


</div>
	<%@ include file="bootstrap-javascript.jsp" %>
</body>

</html>
