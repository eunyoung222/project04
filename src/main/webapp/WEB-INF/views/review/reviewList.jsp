<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>후기</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <c:set var="path1" value="<%=request.getContextPath() %>" />
    <%--    <%@ include file="../common.jsp"%>--%>

    <style>
        .breadcrumb a { color: #464646; }

        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');

        .table {
            font-size: 1.25rem;
            border-top: 2px solid #dee2e6;
            border-bottom: 1px solid #dbdbdb;;
        }
        .table th {
            white-space: nowrap;
            background: #eff1f8;
        }
        .table td {
            white-space: nowrap;
        }
        .table td, .table th {
            padding: 0.75em 0.75em;
        }


        .item1 { width:6%; }
        .item2 { width:64%; }
        .item3 { width:10%; }
        .item4 { width:10%; }
        .item5 { width:10%; }
    </style>

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
<nav class="breadcrumb has-succeeds-separator is-medium is-right mt-3 p-4" style="background: #f1f4f9" aria-label="breadcrumbs">
    <ul class="mr-5">
        <li><a href="${path1}"><i class="xi-home is-size-3"></i></a></li>
        <li><a>커뮤니티</a></li>
        <li><a href="${path1}/review/list.do">후기</a></li>
    </ul>
    <p class="title has-text-centered mt-1 mb-2">후기</p>
<%--    <h3 class="contents">해법의 장점과 특히 만족과 함께 성적 향상을 경험한 학생들의 솔직한 수업만족도 체험수기입니다.</h3>--%>
</nav>

<div class="container">
    <div class="columns is-multiline mt-1 mx-5">
        <div class="column is-4">
            <form action="${path1 }/notice/list.do" method="get" class="field has-addons">
                <p class="control">
                <span class="select">
                    <select id="type" name="type">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                    </select>
                </span>
                </p>
                <p class="control">
                    <input class="input" type="text" id="keyword" name="keyword" placeholder="검색어를 입력하세요" value="${keyword }">
                </p>
                <p class="control">
                    <input type="submit" class="button" value="검색" />
                </p>
            </form>
        </div>
        <div class="column is-2 is-offset-6 has-text-right">
            <c:choose>
                <c:when test="${not empty sid }">
                    <a class="button is-link is-medium" href="${path1 }/review/insert.do">글쓰기</a>
                </c:when>
                <c:otherwise>
                    <a class="button is-link is-medium" href="javascript:checkLogin()">글쓰기</a>
                </c:otherwise>
            </c:choose>
        </div>

        <div class="column is-12">
            <table class="table is-centered is-fullwidth">
                <thead>
                <tr>
                    <th class="item1">No</th>
                    <th class="item2 has-text-centered">제목</th>
                    <th class="item3 has-text-centered">등록일</th>
                    <th class="item4 has-text-centered">작성자</th>
                    <th class="item5 has-text-centered">조회수</th>
                </tr>
                </thead>
                <tbody>
                <%--<c:forEach var="noti" items="${noticeList }" varStatus="status">
                    <tr>
                        <td>${total - ((curPage - 1) * page.postCount + status.index) }</td>
                        <td>
                            <a href="${path1 }/notice/detail.do?no=${noti.no }" class="al">${noti.title }</a>
                        </td>
                        <fmt:parseDate value="${noti.resdate}" pattern="yyyy-MM-dd" var="formattedDate" />
                        <td class="has-text-centered"><fmt:formatDate value="${formattedDate }" pattern="yyyy.MM.dd"/></td>
                        <td class="has-text-centered">관리자</td>
                        <td class="has-text-centered">${noti.visit }</td>
                    </tr>
                </c:forEach>--%>
                <c:forEach var="review" items="${reviewList }" varStatus="status">
                    <tr>
                        <td>${total - ((curPage - 1) * page.postCount + status.index) }</td>
                        <td>
                            <a href="${path1 }/review/detail.do?no=${review.no }" class="al">${review.title }</a>
                        </td>
                        <fmt:parseDate value="${review.resdate}" pattern="yyyy-MM-dd" var="formattedDate" />
                        <td class="has-text-centered"><fmt:formatDate value="${formattedDate }" pattern="yyyy.MM.dd"/></td>
                        <td class="has-text-centered">${review.id }</td>
                        <td class="has-text-centered">${review.visit }</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <br>
</div>

<nav class="pagination is-rounded is-centered mb-6" role="navigation" aria-label="pagination">
    <c:if test="${curPage > page.pageCount }">
        <a href="${path1 }/review/list.do?page=${page.blockStartNum - 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-previous">Previous</a>
    </c:if>
    <c:if test="${page.blockLastNum < page.totalPageCount }">
        <a href="${path1 }/review/list.do?page=${page.blockLastNum + 1 }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-next">Next page</a>
    </c:if>

    <ul class="pagination-list">
        <c:forEach var="i" begin="${page.blockStartNum }" end="${page.blockLastNum }">
            <c:choose>
                <c:when test="${i == curPage }">
                    <li>
                        <a href="${path1 }/review/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link is-current" aria-label="Page ${i }" aria-current="page" >${i }</a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li>
                        <a href="${path1 }/review/list.do?page=${i }<c:if test="${!empty keyword }">&type=${type }&keyword=${keyword }</c:if>" class="pagination-link" aria-label="Page ${i }" aria-current="page">${i }</a>
                    </li>
                </c:otherwise>
            </c:choose>
        </c:forEach>
    </ul>
</nav>
<jsp:include page="../include/footer.jsp"></jsp:include>
<script>
    function checkLogin() {
        var confirmLogin = confirm("글 작성은 로그인이 필요해요! 로그인하시겠어요?");
        if (confirmLogin) {
            location.href = '${path1 }/user/loginForm';
        }
    }
</script>
</body>
</html>
