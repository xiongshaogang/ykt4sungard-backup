<%@ include file="/html/extportlet/advquery/init.jsp"%>

<%
	String querytype23 = "bydate";
	String queryType = ParamUtil.getString(request, "querytype",
			querytype23);
%>

<c:if
	test="<%=SessionErrors.contains(request,
								EcardConstants.ERROR_EXIST)%>">
	<font class="portlet-msg-error"> <%=LanguageUtil.format(pageContext,
								EcardConstants.ERROR_EXIST, SessionErrors.get(
										request, EcardConstants.ERROR_EXIST))%>
	</font>
</c:if>


<html:form action="/ext/photo_queryresult" method="POST"
	onsubmit="submitPortletForm(this); return false;">

	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>

			<td>
				<html:hidden property="querytype" />
				<table width="94%" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>
						<td nowrap="nowrap">
							<bean:message key="query.type" />
							<html:radio property="statType" value="bydate"
								onclick="javascript:setQueryType('bydate')"></html:radio>
							<bean:message key="query.bydate" />
							<html:radio property="statType" value="bymonth"
								onclick="javascript:setQueryType('bymonth')"></html:radio>
							<bean:message key="query.bymonth" />
						</td>
					</tr>
				</table>
				<c:if test='<%=queryType.equals("bydate")%>'>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="40">
								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="25" align="right" nowrap="nowrap">
											<bean:message key="query.emptype" />
										</td>
										<td nowrap="nowrap" width="20%">
											<html:select property="emptype">
												<html:option value="all">
													<bean:message key="photo.all" />
												</html:option>
												<html:options collection="typeList"
													labelProperty="custtypename" property="custtype" />
											</html:select>
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td width="7%" nowrap="nowrap">
											<bean:message key="query.begindate" />
										</td>
										<td width="20%" nowrap="nowrap">
											<html:text property="photo_begindate"></html:text>
										</td>
										<td width="20%" nowrap="nowrap">
											<a href="#"><img
													src="/html/extthemes/classic/images/advquery/search.jpg"
													width="33" height="22" border="0"
													id="f_trigger_photo_begindate" /> </a>
										</td>
										<td width="8%" nowrap="nowrap">
											<bean:message key="query.enddate" />
										</td>
										<td width="20%" nowrap="nowrap">
											<html:text property="photo_enddate"></html:text>
										</td>
										<td width="20%" nowrap="nowrap">
											<a href="#"><img
													src="/html/extthemes/classic/images/advquery/search.jpg"
													width="33" height="22" border="0"
													id="f_trigger_photo_enddate" /> </a>
										</td>
										<script language="JavaScript">
                        
				                        Calendar.setup({
				                            inputField     :    "photo_begindate",     // id of the input field
				                            weekNumbers     :   <%=LanguageUtil.get(pageContext, "format.byweek")%>,
				                            button         :    "f_trigger_photo_begindate",  // trigger for the calendar (button ID)
				                            ifFormat       :    "<%=LanguageUtil.get(pageContext,
											"format.date")%>",
				                            align          :    "Bl",           // alignment (defaults to "Bl")
				                            singleClick    :    true
				                        });
				                        
				                        Calendar.setup({
				                            inputField     :    "photo_enddate",     // id of the input field
				                            weekNumbers        :   <%=LanguageUtil.get(pageContext, "format.byweek")%>,
				                            button         :    "f_trigger_photo_enddate",  // trigger for the calendar (button ID)
				                            ifFormat      :    "<%=LanguageUtil.get(pageContext,
											"format.date")%>",
				                            align          :    "Bl",           // alignment (defaults to "Bl")
				                            singleClick    :    true
				                        });
				                    </script>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0" bgcolor="#f8f8f8">
						<tr>
							<td height="30">
								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="66%" class="red_text">
											<bean:message key="system.note" />
										</td>
										<td width="34%" align="center">
											<button onclick="document.photoform.submit();">
												<bean:message key="btn.query" />
											</button>
											<button onclick="document.photoform.reset();">
												<bean:message key="btn.clear" />
											</button>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</c:if>
				<c:if test='<%=queryType.equals("bymonth")%>'>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="40">
								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="25" align="right" nowrap="nowrap">
											<bean:message key="query.emptype" />
										</td>
										<td nowrap="nowrap" width="20%">
											<html:select property="emptype">
												<html:option value="all">
													<bean:message key="photo.all" />
												</html:option>
												<html:options collection="typeList"
													labelProperty="custtypename" property="custtype" />
											</html:select>
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td width="7%" nowrap="nowrap">
											<bean:message key="query.beginmonth" />
										</td>
										<td width="20%" nowrap="nowrap">
											<html:text property="photo_begindate" readonly="true"></html:text>
										</td>
										<td width="20%" nowrap="nowrap">
											<a href="#"><img
													src="/html/extthemes/classic/images/advquery/search.jpg"
													width="33" height="22" border="0"
													id="f_trigger_photo_begindate" /> </a>
										</td>
										<td width="8%" nowrap="nowrap">
											<bean:message key="query.endmonth" />
										</td>
										<td width="20%" nowrap="nowrap">
											<html:text property="photo_enddate" readonly="true"></html:text>
										</td>
										<td width="20%" nowrap="nowrap">
											<a href="#"><img
													src="/html/extthemes/classic/images/advquery/search.jpg"
													width="33" height="22" border="0"
													id="f_trigger_photo_enddate" /> </a>
										</td>
										<script language="JavaScript">
                        
				                        Calendar.setup({
				                            inputField     :    "photo_begindate",     // id of the input field
				                            weekNumbers        :   <%=LanguageUtil.get(pageContext, "format.byweek")%>,
				                            button         :    "f_trigger_photo_begindate",  // trigger for the calendar (button ID)
				                           ifFormat       :    "<%=LanguageUtil.get(pageContext,
											"format.date")%>",
				                            align          :    "Bl",           // alignment (defaults to "Bl")
				                            singleClick    :    true
				                        });
				                        
				                        Calendar.setup({
				                            inputField     :    "photo_enddate",     // id of the input field
				                            weekNumbers        :   <%=LanguageUtil.get(pageContext, "format.byweek")%>,
				                            button         :    "f_trigger_photo_enddate",  // trigger for the calendar (button ID)
				                            ifFormat      :    "<%=LanguageUtil.get(pageContext,
											"format.date")%>",
				                            align          :    "Bl",           // alignment (defaults to "Bl")
				                            singleClick    :    true
				                        });
				                    </script>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0" bgcolor="#f8f8f8">
						<tr>
							<td height="30">
								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="66%" class="red_text">
											<bean:message key="system.note" />
										</td>
										<td width="34%" align="center">
											<button onclick="document.photoform.submit();">
												<bean:message key="btn.query" />
											</button>
											<button onclick="document.forms[0].reset();">
												<bean:message key="btn.clear" />
											</button>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</c:if>
				<c:if test='<%=queryType.equals("byweek")%>'>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0">
						<tr>
							<td height="40">
								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td height="25" align="right" nowrap="nowrap">
											<bean:message key="query.emptype" />
										</td>
										<td nowrap="nowrap">
											<html:select property="emptype">
												<html:option value="all">
													<bean:message key="photo.all" />
												</html:option>
												<html:options collection="typeList"
													labelProperty="custtypename" property="custtype" />
											</html:select>
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
										<td nowrap="nowrap">
											&nbsp;
										</td>
									</tr>
									<tr>
										<td width="7%" nowrap="nowrap">
											<bean:message key="query.begindate" />
										</td>
										<td width="20%" nowrap="nowrap">
											<html:text property="photo_begindate" readonly="true"></html:text>
										</td>
										<td width="20%" nowrap="nowrap">
											<a href="#"><img
													src="/html/extthemes/classic/images/advquery/search.jpg"
													width="33" height="22" border="0"
													id="f_trigger_photo_begindate" /> </a>
										</td>
										<td width="8%" nowrap="nowrap">
											<bean:message key="query.enddate" />
										</td>
										<td width="20%" nowrap="nowrap">
											<html:text property="photo_enddate" readonly="true"></html:text>
										</td>
										<td width="20%" nowrap="nowrap">
											<a href="#"><img
													src="/html/extthemes/classic/images/advquery/search.jpg"
													width="33" height="22" border="0"
													id="f_trigger_photo_enddate" /> </a>
										</td>
										<script language="JavaScript">
			                        
			                        Calendar.setup({
			                            inputField     :    "photo_begindate",     // id of the input field
			                           weekNumbers     :   <%=LanguageUtil.get(pageContext, "format.byweek")%>,
			                            button         :    "f_trigger_photo_begindate",  // trigger for the calendar (button ID)
			                            ifFormat      :    "<%=LanguageUtil.get(pageContext,
											"format.date")%>",
			                            align          :    "Bl",           // alignment (defaults to "Bl")
			                            singleClick    :    true
			                        });
			                        
			                        Calendar.setup({
			                            inputField     :    "photo_enddate",     // id of the input field
			                            weekNumbers        :   <%=LanguageUtil.get(pageContext, "format.byweek")%>,
			                            button         :    "f_trigger_photo_enddate",  // trigger for the calendar (button ID)
			                            ifFormat      :    "<%=LanguageUtil.get(pageContext,
											"format.date")%>",
			                            align          :    "Bl",           // alignment (defaults to "Bl")
			                            singleClick    :    true
			                        });
			                    </script>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					<table width="98%" border="0" align="center" cellpadding="0"
						cellspacing="0" bgcolor="#f8f8f8">
						<tr>
							<td height="30">
								<table width="96%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="66%" class="red_text">
											<bean:message key="system.note" />
										</td>
										<td width="34%" align="center">
											<button onclick="document.photoform.submit();">
												<bean:message key="btn.query" />
											</button>
											<button onclick="document.photoform.reset();">
												<bean:message key="btn.clear" />
											</button>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</c:if>
			</td>
		</tr>
	</table>
</html:form>
<script>
    function setQueryType(typevalue) {
        document.photoform.querytype.value = typevalue;
        document.photoform.action='/ext/photo';
        document.photoform.submit();
    }
</script>