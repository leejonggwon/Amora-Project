<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Website</title>
    <style>
     /* 이전/다음 버튼 스타일 */
        .pagination {
            text-align: center;
            margin-top: 20px;
        }
        .pagination a {
            color: black;
            float: center;
            padding: 8px 16px;
            text-decoration: none;
            transition: background-color .3s;
        }
        .pagination a.active {
            background-color: #007BFF;
            color: white;
        }
        .pagination a:hover:not(.active) {
            background-color: #ddd;
        }
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }
        header {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        nav {
            background-color: #555;
            padding: 10px;
            display: flex;
            justify-content: center;
        }
        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        nav li {
            display: inline-block;
            margin: 5px;
            background-color: #777;
            padding: 5px 15px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
        }
        nav a:hover {
            background-color: #888;
        }
        section {
            padding: 20px;
        }
        /* 게시판 테이블 스타일 */
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #ccc;
        }
        td {
            background-color: #f2f2f2;
        }
        /* 검색칸 스타일 */
        .search-container {
            text-align: center;
            margin: 20px auto;
        }
        .search-container input[type="text"] {
            width: 300px; /* 검색칸 넓이 설정 (예시로 300px 지정) */
            padding: 5px;
            font-size: 16px;
        }
        .search-container input[type="submit"] {
            padding: 5px 20px;
            font-size: 16px;
        }
         /* 글쓰기 버튼 스타일 */
        .write-button {
            background-color: gray;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            cursor: pointer;;
        }
          .menu-bar {
            text-align: center;
            background-color: #f1f1f1;
            padding: 10px;
            margin-bottom: 20px;
        }
        .menu-bar a {
            color: #333;
            text-decoration: none;
            padding: 5px 15px;
            font-size: 20px;
        }
        .menu-bar a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>AMORA 아파트</h1>
    </header>

    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="#community">커뮤니티</a></li>
            <li><a href="#second-hand">중고거래/나눔</a></li>
            <li><a href="#joint-trading">공동구매</a></li>
            <li><a href="#promotion">홍보</a></li>
            <li><a href="#notice">공지사항</a></li>
            <li><a href="#my-page">마이페이지</a></li>
        </ul>
    </nav>
     <!-- Menu Bar -->
    <div class="menu-bar">
        <a href="#">홈</a>
        <a href="#">모임</a>
        <a href="#">일상</a>
        <a href="#">잡담</a>
        <a href="#">동아리</a>
    </div>

    <!-- Content Section - Community -->
    <section id="community">
    
   
        <table border="1" cellpadding="5">
            <tr>
                <th>번호</th>
                <th>분류</th>
                <th>제목</th>
                <th>조회수</th>
            </tr>
            <tr>
                <td>01</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>02</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>03</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>04</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>05</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>06</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>07</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>08</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>09</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>10</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>선택</td>
                <td><a href="#">아모라 제목없음</td>
                <td>00</td>
            </tr>
            <!-- 게시판에 추가로 게시물을 표시할 수 있습니다. -->
        </table>
        
        <!-- 검색칸 -->
        <div class="search-container">
            <form action="#" method="get"> <!-- 검색 기능을 추가할 경우 해당 form 태그의 action과 method를 설정하십시오. -->
                <input type="text" name="search" placeholder="검색어를 입력하세요"> <!-- 검색칸 -->
                <input type="submit" value="검색"> <!-- 검색 버튼 -->
            </form>
        </div>
        
        <!-- 글쓰기 버튼 -->
        <button class="write-button">글쓰기</button>
    </section>

   
   
       
        
        <!-- 검색칸 -->
        <!-- 글쓰기 버튼 -->
        
        <!-- 페이지 이동 버튼 -->
        <div class="pagination">
            <a href="#">&laquo;</a>
            <a class="active" href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">7</a>
            <a href="#">8</a>
            <a href="#">9</a>
            <a href="#">10</a>
            <a href="#">&raquo;</a>
        </div>
    </section>
    
    

</body>
</html>