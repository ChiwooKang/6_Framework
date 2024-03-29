<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<header>
            <section>
                <!-- 클릭 시 메인페이지로 이동하는 로고 -->
                <a href = "/">
                    <img src = "/resources/images/logo.jpg" id ="home-logo">
                </a>
            </section>
            <section>
                <article class = "search-area">

                    <!-- form : 내부 input 태그의 값을 서버 또는 페이지로 전달(제출) -->
                    <form action = "#">
                        <fieldset>
                            <input type = "search" id="query" name="query"
                            placeholder="검색어를 입력해주세요" >
                            <button type ="submit" id="search-btn" class="fa-solid fa-magnifying-glass">
                                <!-- 돋보기는 글자(특수문자)로 취급되기 때문에, font-size 등 다 적용됨(꾸미기 가능!) -->
                            </button>
                        </fieldset>
                    </form>
                </article>
            </section>
            
            <!--헤더 오른쪽 상단 메뉴 --> 
            <div id="header-top-menu">
                <c:choose>
                        <%-- 로그인이 안된 경우 --%>
                    <c:when test="${empty sessionScope.loginMember}">
                     <a href="/"> 메인 페이지</a>
                     |
                     <a href="/member/login"> 로그인</a>
                    </c:when>


                    <%-- 로그인이 된 경우 --%>
                    <c:otherwise>
                        <label for="header-menu-toggle">
                            ${loginMember.memberNickname}
                            <i class="fa-solid fa-caret-down"></i>
                        </label>

                        <input type="checkbox" id="header-menu-toggle">

                        <div id="header-menu">
                            <a href = "/member/myPage/info">내정보</a>
                            <a href = "/member/logout">로그아웃</a>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>

        </header>

        <nav>
            <ul>
                <%-- <li><a href = "#">공지사항</a></li>
                <li><a href = "#">자유게시판</a></li>
                <li><a href = "#">질문게시판</a></li>
                <li><a href = "#">FAQ</a></li>
                <li><a href = "#">1:1문의</a></li> --%>

            <c:forEach var="boardType" items="${boardTypeList}">
                <li>
                    <a href="/board/${boardType.BOARD_CODE}">${boardType.BOARD_NAME}</a>
                </li>            
            </c:forEach>
            
            <li>
                <a href="/chatting">채팅</a>
            </li>

            </ul>

        </nav>