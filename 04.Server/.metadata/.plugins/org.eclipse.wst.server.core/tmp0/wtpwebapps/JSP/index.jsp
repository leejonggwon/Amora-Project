<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>My Website</title>
    <style>
     /* ����/���� ��ư ��Ÿ�� */
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
        /* �Խ��� ���̺� ��Ÿ�� */
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
        /* �˻�ĭ ��Ÿ�� */
        .search-container {
            text-align: center;
            margin: 20px auto;
        }
        .search-container input[type="text"] {
            width: 300px; /* �˻�ĭ ���� ���� (���÷� 300px ����) */
            padding: 5px;
            font-size: 16px;
        }
        .search-container input[type="submit"] {
            padding: 5px 20px;
            font-size: 16px;
        }
         /* �۾��� ��ư ��Ÿ�� */
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
        <h1>AMORA ����Ʈ</h1>
    </header>

    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="#community">Ŀ�´�Ƽ</a></li>
            <li><a href="#second-hand">�߰��ŷ�/����</a></li>
            <li><a href="#joint-trading">��������</a></li>
            <li><a href="#promotion">ȫ��</a></li>
            <li><a href="#notice">��������</a></li>
            <li><a href="#my-page">����������</a></li>
        </ul>
    </nav>
     <!-- Menu Bar -->
    <div class="menu-bar">
        <a href="#">Ȩ</a>
        <a href="#">����</a>
        <a href="#">�ϻ�</a>
        <a href="#">���</a>
        <a href="#">���Ƹ�</a>
    </div>

    <!-- Content Section - Community -->
    <section id="community">
    
   
        <table border="1" cellpadding="5">
            <tr>
                <th>��ȣ</th>
                <th>�з�</th>
                <th>����</th>
                <th>��ȸ��</th>
            </tr>
            <tr>
                <td>01</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>02</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>03</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>04</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>05</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>06</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>07</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>08</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>09</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>10</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <tr>
                <td>00</a></td>
                <td>����</td>
                <td><a href="#">�Ƹ�� �������</td>
                <td>00</td>
            </tr>
            <!-- �Խ��ǿ� �߰��� �Խù��� ǥ���� �� �ֽ��ϴ�. -->
        </table>
        
        <!-- �˻�ĭ -->
        <div class="search-container">
            <form action="#" method="get"> <!-- �˻� ����� �߰��� ��� �ش� form �±��� action�� method�� �����Ͻʽÿ�. -->
                <input type="text" name="search" placeholder="�˻�� �Է��ϼ���"> <!-- �˻�ĭ -->
                <input type="submit" value="�˻�"> <!-- �˻� ��ư -->
            </form>
        </div>
        
        <!-- �۾��� ��ư -->
        <button class="write-button">�۾���</button>
    </section>

   
   
       
        
        <!-- �˻�ĭ -->
        <!-- �۾��� ��ư -->
        
        <!-- ������ �̵� ��ư -->
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