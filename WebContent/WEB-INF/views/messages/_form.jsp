<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--フォームの共通レイアウト --%>
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