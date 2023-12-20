<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>키오스크 초기화면</title>
 <style>
 @font-face {
        font-family: 'KCC-Ganpan';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
        font-weight: normal;
        font-style: normal;
    }
 
        body {
            background-color: #FFF0BB;
            background-size: cover;
        }

        .fullscreen-div {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-size: 2em;
            cursor: pointer;
            color: black;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); 
            animation: glow 2s ease-in-out infinite alternate;
            font-family: 'KCC-Ganpan';
        }
        
        .fullscreen-div:hover {
        color: lightgreen; 
    }

    @keyframes glow {
        from {
            text-shadow: 0 0 10px white, 0 0 20px white, 0 0 30px white, 0 0 40px white;
        }
        to {
            text-shadow: 0 0 20px white, 0 0 30px white, 0 0 40px white, 0 0 50px white, 0 0 60px white;
        }
    }
    </style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
        $(document).ready(function(){
            // div 클릭 시 페이지 이동
            $('.fullscreen-div').click(function(){
                window.location.href = 'kiosk.do';
            });
            
        });
    </script>
</head>
<body>
    <div class="fullscreen-div">
        주문하시려면 화면을 클릭하세요
    </div>
</body>

</html>