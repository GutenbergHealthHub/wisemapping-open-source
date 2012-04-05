<%--@elvariable id="isHsql" type="boolean"--%>

<%@ include file="/jsp/init.jsp" %>

<div id="loginContent">
    <div id="news" class="sb">
        <h1>What is New: </h1>
        <ul>
            <li>Links Between Nodes</li>
            <li>FreeMind 0.9 Update</li>
            <li>Improved HTML 5.0 Support</li>
            <li>Firefox 6.0 is officially supported</li>
        </ul>
    </div>
    <div id="login" class="sb">
        <h1>
            <spring:message code="SIGN_IN"/>
        </h1>

        <form action="<c:url value='/j_spring_security_check'/>" method="POST">
            <table>
                <tbody>
                <c:if test="${not empty param.login_error}">
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td class="errorMsg">
                            <c:choose>
                                <c:when test="${param.login_error == 3}">
                                    <spring:message code="USER_INACTIVE"/>
                                </c:when>
                                <c:otherwise>
                                    <spring:message code="LOGIN_ERROR"/>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:if>
                <tr>
                    <td class="formLabel">
                        <label for="email"><spring:message code="EMAIL"/>:</label>
                    </td>
                    <td>
                        <input type='text' tabindex="1" id="email" name='j_username'/>
                    </td>
                </tr>
                <tr>
                    <td class="formLabel">
                        <label for="password"><spring:message code="PASSWORD"/>:</label>
                    </td>
                    <td>
                        <input type='password' tabindex="2" id="password" name='j_password'/>
                    </td>
                </tr>
                <tr>
                    <td class="formLabel">
                        <input type="checkbox" id="rememberme" name="_spring_security_remember_me"/>
                    </td>
                    <td>
                        <label for="rememberme"><spring:message code="REMEMBER_ME"/>:</label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" class="btn-primary" id="submitButton"
                               value="<spring:message code="SIGN_IN"/>">

                        <div style="text-align:right;"><a href="<c:url value="forgotPassword.htm"/>">
                            <spring:message code="FORGOT_PASSWORD"/>
                        </a></div>
                    </td>
                </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>

<div id="register">
    <b><spring:message code="NOT_READY_A_USER"/></b>
    <spring:message code="NOT_READY_A_USER_MESSAGE"/>
    <a href="userRegistration.htm">
        <spring:message code="JOIN_NOW"/>
    </a>
</div>

<c:if test="${isHsql== 'true'}">
    <div style="padding:10px;background-color: #E0EFFF; border-radius: 5px 5px 5px 5px;border-style:solid;border-color:gray">
        <img src="../images/info.png" style="margin:0 4px" alt="info">
        <spring:message code="NO_PRODUCTION_DATABASE_CONFIGURED"/>&nbsp;<a
            href="http://www.wisemapping.org/documentation/configu">here</a>.
    </div>
</c:if>
