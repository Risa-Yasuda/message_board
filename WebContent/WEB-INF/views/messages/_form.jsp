<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--フォームの共通レイアウト --%>
<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>
    </div>
</c:if>
<label for="title">タイトル</label><br />
<input type="text" name="title" id="title" value="${message.title}" />
<%--
    value="${message.title}"→リクエストスコープの message オブジェクトからデータを参照して、
    入力内容の初期値として表示するようにしています。
    edit や、入力値エラーがあってフォームのページを再度表示する際に役立ちます。
 --%>
<br /><br />

<label for="content_msg">メッセージ</label><br />
<input type="text" name="content" id="content_msg" value="${message.content}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">投稿</button>