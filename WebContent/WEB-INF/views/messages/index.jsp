<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
<%--url 属性に指定したファイルの内容をその位置で読み込むことができます。 --%>
    <c:param name="content">
    <%--<c:param name="content"> と書いたタグの中の記述内容が、
            app.jsp の ${param.content} のところに当てはまります。 --%>
        <h2>メッセージ一覧</h2>
        <ul>
            <c:forEach var="message" items="${messages}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${message.id}">
                        <c:out value="${message.id}" />
                    </a>
                    ：<c:out value="${message.title}"></c:out> &gt; <c:out value="${message.content}" />
                </li>
            </c:forEach>
        </ul>

        <p><a href="${pageContext.request.contextPath}/new">新規メッセージの投稿</a></p>
        <%--自動的に /message_board というコンテキストパスの文字列に置き換わります
                コンテキストパスの設定を変更してもJSPファイルに修正が必要なくなるので、
                コンテキストパスは固定の文字列より上記の書き方をオススメします。 --%>
    </c:param>
</c:import>