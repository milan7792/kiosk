<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<title>피자 키오스크</title>
<meta charset="UTF-8">
<style>
 @font-face {
    font-family: 'KCC-Ganpan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

.side{
    position: absolute;
    top: 0;
    right: 0;
    width: 30%;
    height: 100%;
    background-color: white;
}

.menu_image,
.selected_menu_image {
  width: 60%;
  height: 60%;
  background-size: cover;
  background-position: center;
  margin-bottom: 5px;
}
.하와이안피자 {
  background-image: url("/img/Hawaiian.png");
}
.불고기피자 {
  background-image: url("/img/Bulgogi.png");
}
.페퍼로니피자 {
  background-image: url("/img/Pepperoni.png");
}
.치즈피자 {
  background-image: url("/img/Cheese.png");
}
.훈제치킨 {
  background-image: url("/img/Chicken.png");
}
.오븐스파게티 {
  background-image: url("/img/Pasta.png");
}
.치즈볼 {
  background-image: url("/img/Ball2.png");
}
.콜라 {
  background-image: url("/img/Cola2.png");
}
.사이다 {
  background-image: url("/img/Soda.png");
}

html {
  height: 100vh;
  width: 100vw;
}

/* 카테고리 버튼 기본 스타일 */
.category {
    background-color: #4CAF50; /* 버튼 배경색 */
    color: white; /* 글자색 */
    padding: 10px 20px; /* 내부 패딩 */
    text-align: center; /* 텍스트 가운데 정렬 */
    text-decoration: none; /* 텍스트 밑줄 없음 */
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    transition-duration: 0.4s; /* hover 효과 duration */
    cursor: pointer;
    border-radius: 5px; /* 버튼 모서리 둥글게 */
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); /* 그림자 효과 */
}

/* 마우스가 올라갔을 때의 스타일 */
.category:hover {
    background-color: #45a049; /* 배경색 변경 */
    color: black; /* 글자색 변경 */
}

body {
  overflow: hidden;
  font-family: "KCC-Ganpan", sans-serif;
  padding: 5vh;
  background-color: #FFF0BB;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.menu_container {
  flex-grow: 85;
}
.order_container {
  flex-grow: 15;
}
h1 {
  width: 450px;
  text-align: center;
  padding-bottom: 3vh;
}
section {
  width: 450px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.menu,
.selected_menu {
  width: 30%;
  height: 30%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: white;
  border: 5px solid rgb(165, 165, 165);
}
.selected_menu {
  width: 100%;
  height: 100%;
  margin-top: 5px;
}
.selected {
  height: 100%;
  flex: 3 0 0;
  margin-right: 2vh;
  display: flex;
  flex-direction: column;
  align-items: center;
}
.order_detail {
  flex: 7 0 0;
  height: 80%;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}

.order_container {
  display: flex;
  align-items: flex-end;
  background-color: white;
  border: 5px solid rgb(165, 165, 165);
  padding: 2vh;
  padding-top: 1vh;
}
.order {
  display: flex;
  align-items: center;
}

button {
  flex: 3 0 0;
}

span {
  display: inline-block;
  width: 20%;
  text-align: center;
  font-weight: 600;
}

input {
  margin: 5px;
  border: 3px solid black;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
}

button {
  font-family: "KCC-Ganpan", sans-serif;
  background-color: gray;
  color: white;
  padding: 5px;
  max-width: 30%;
  border-radius: 5px;
  font-weight: 600;
  font-size: 1rem;
}

input[type*="number"] {
  width: 30%;
}
.menu_name {
  text-align: center;
}
.selected > div:first-child {
  font-weight: 700;
}
.selected_menu_image {
  animation: move 1s infinite linear;
}

@keyframes move {
  50% {
    transform: translateY(-7px);
  }
}

.menu:hover {
  border: 4px solid rgba(157, 157, 157, 0.5);
  transition: 0.5s;
}
.menu:hover > .menu_image {
  animation: move 1s infinite linear;
}

button:hover {
  background-color: lightgray;
  color: black;
}

button:active {
  background-color: rgb(100, 100, 100);
  color: black;
}

.order_sheet {
  z-index: -1;
  position: absolute;
  width: 200px;
  height: 160px;
  padding-top: 20px;
  background-color: rgb(250, 245, 201);
  top: 60%;
  left: 50%;
  border: 1px solid gray;
  box-shadow: 7px 7px 7px rgba(100, 100, 100, 0.5);
  text-align: center;
  font-size: 1.2rem;
  opacity: 0;
  margin-top: 50px;
}
.order_content {
  padding-left: 25px;
  text-align: left;
  margin-top: -10px;
  font-size: 1rem;
  line-height: 1.5;
}

.after {
  z-index: 2;
  margin: 0;
  opacity: 1;
  transition: 1s;
  animation: sheet 2.5s linear;
  animation-fill-mode: both;
}
.worker {
  background-size: cover;
  position: absolute;
  top: 51%;
  left: -70px;
  width: 70px;
  height: 70px;
  z-index: 3;
}
.working {
  animation: worker 2.5s linear;
}
.order_content {
  margin-top: 5px;
}

@keyframes worker {
  0% {
  }
  10% {
    transform: translateX(12vw) translateY(-30px);
  }
  20% {
    transform: translateX(24vw);
  }
  30% {
    transform: translateX(36vw) translateY(-30px);
  }
  40% {
    transform: translateX(48vw);
  }
  50% {
    transform: translateX(60vw) translateY(-30px);
  }
  60% {
    transform: translateX(70vw) translateY(3vh);
  }
  62% {
    transform: translateX(70vw) translateY(3vh);
  }
  70% {
    transform: translateX(85vw) translateY(-30px);
  }
  80% {
    transform: translateX(98vw) translateY(3vh);
  }
  90% {
    transform: translateX(110vw) translateY(-30px);
  }
  100% {
    transform: translateX(120vw);
  }
}

@keyframes sheet {
  62% {
    transform: translateX(0) translateY(0);
  }
  70% {
    transform: translateX(15vw) translateY(-50px);
  }
  80% {
    transform: translateX(28vw);
  }
  90% {
    transform: translateX(40vw) translateY(-50px);
  }
  100% {
    transform: translateX(50vw);
  }
}

.modal {
  z-index: -1;
  position: absolute;
  top: 76%;
  right: calc(50vw - 220px);
  width: 290px;
  height: 18%;
  background-color: rgba(255, 255, 255, 0.9);
  text-align: center;
  line-height: 18%;
  opacity: 0;
  transition: 0.5s;
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding-top: 3%;
}
.alert {
  z-index: 3;
  opacity: 1;
  transition: 0.5s;
}
.modal div {
  height: 30%;
}

.modal > div:first-child {
  font-size: 1.1rem;
  font-weight: 700;
  margin-top: 10px;
}
.modal > div:nth-child(2) {
  color: gray;
  font-size: 0.9rem;
}

#total-amount {
  font-size: 40px;
</style>
</head>

<body>

<div class="side" style="overflow-y: auto; height: 100vh;">
<h1>주문서</h1>
<div id="order-details"></div>

<button id="cancel">초기화</button>
<!-- <form id="form_test" action="saveOrders.do" method="post"> -->
<button id="payment">결제하기</button>
</div>
<header>
	<div class="header-wrapper">
		<h1>온천물로 반죽한 피자🍕</h1>
		<button class="category" id="pizza">피자</button>
		<button class="category" id="sidemenu">사이드</button>
		<button class="category" id="drink">음료</button>
	</div>
</header>

<br>
<section class="menu_container">
<c:forEach var="menu" items="${selectMenuList}">
<div class="menu ${menu.category}">	
	<div class="menu_image ${menu.menuName}"></div>
	<div class="menu_name">${menu.menuName}</div>
	<div class="menu_price">${menu.menuPrice}</div>
</div>
</c:forEach>
</section>

<section class="order_container">
	<div class="selected">
		<div>선택한 메뉴</div>
		<div class="selected_menu">
			<div class="selected_menu_image"></div>
			<div class="selected_menu_name"></div>
		</div>
	</div>
	
	<div class="oreder_detail">
			
		<div class="order quantity">
			<span class="label">수량</span>
			<button id="decrease">-</button>
			<input type="number" id="quantity" min=1 max=99 readonly>
			<button id="increase">+</button>
		</div>
		
		<div class="order price">
			<div>
    		<span class="label">금액 </span> 
    		<span id="display_price"></span> 
    		</div>
    		<button>주문하기</button>
		</div>

			
		</div>

</section>

<div class="worker"></div>
    <div class="order_sheet before">주문서
      <div class="order_content">   
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>
    </div>
    
    <div class="modal">
      <div>모달 내용</div>
      <div>클릭하면 닫힙니다</div>
    </div>
    
<script>

let orders = [];
let totalAmount = 0;	// 총 주문 금액  

function setOrder(menu, quantity, price) {
	let order = {
	menu: menu,
    quantity: quantity,
    price: price,
	};
	return order;
	}
		
	const modal = document.querySelector(".modal");
	modal.onclick = function() {
	modal.classList.remove("alert");
	}
	

	if (document.querySelector(".order.price button")) {
	document.querySelector(".order.price button").onclick = function() {
	const menu = selectedMenu.children[1].textContent;	
	const quantity = document.querySelector(
		".order.quantity input[type='number']"
	);
	const price = document.querySelector("#display_price").textContent;
	const orderSheet = document.querySelector(".order_sheet");
	const orderContentList = document.querySelector(".order_content").children;
	const worker = document.querySelector(".worker");

	if (!menu) {
	  modal.firstElementChild.textContent = "메뉴를 선택해주세요!";
	  modal.classList.add("alert");
	} else {
	  let order = setOrder(menu, quantity.value, price);
	  orders.push(order);	// orders 배열에 주문 추가
	  orderContentList[0].textContent = "메뉴: " + order.menu;
	  orderContentList[1].textContent = "수량: " + order.quantity;
	  orderContentList[2].textContent = "금액: " + price;
	  totalAmount += parseInt(price.replace(/[^0-9]/g, ''));
	  orderSheet.classList.add("after");
	  worker.classList.add("working");
	  
	  // 주문서 영역에 주문 정보 출력
	  var orderDetails = document.getElementById('order-details');
	  var newOrder = document.createElement('div');
	  
	// 주문 정보를 p 태그로 생성하여 새로운 div에 추가
	  newOrder.innerHTML = "<p>메뉴: " + order.menu + "</p><p>수량: " + order.quantity + "</p><p>금액: " + price + "</p><br>";

	  orderDetails.appendChild(newOrder);  // order-details div에 새로운 주문 정보 추가
	  
	  // 총 합계 출력
      var totalAmountElement = document.getElementById('total-amount');
      if (!totalAmountElement) {
        totalAmountElement = document.createElement('p');
        totalAmountElement.id = 'total-amount';
        orderDetails.appendChild(totalAmountElement);
      }
      totalAmountElement.textContent = "총 합계: " + totalAmount.toString() + '원';
	  
	  setTimeout(() => {
	    orderSheet.classList.remove("after");
	    worker.classList.remove("working");
	  }, 3000);
	}
};
}
	
	let menus = document.querySelectorAll(".menu");
	menus.forEach(menu => {
	    menu.addEventListener('click', () => {
	      selectedMenuPrice = parseInt(menu.querySelector('.menu_price').innerText.replace(/[^0-9]/g, ''));
	      document.getElementById('quantity').value = 1;     // 메뉴를 클릭했을 때 기본 수량을 1로 설정
	      updatePrice();
	    });
	  });
	let selectedMenu = document.querySelector(".selected_menu");
	
	
	if (menus[8].children.length) {
	for (let i = 0; i < menus.length; i++) {
	menus[i].addEventListener("click", () => {
	const selectedImageClassList = selectedMenu.children[0].classList;
	for (let clss of selectedImageClassList) {
	if (clss !== "selected_menu_image") selectedImageClassList.remove(clss);
	}
	selectedMenu.children[1].textContent = menus[i].children[1].textContent;
	selectedMenu.children[0].classList.add(menus[i].children[0].classList[1]);
	});
}
}
	
	document.querySelectorAll('.category').forEach(btn => {
		btn.addEventListener('click', () => {
			let category = btn.id;
			document.querySelectorAll('.menu').forEach(menu => {
				if (menu.classList.contains(category)) {
					menu.style.display = 'block';  // 해당 카테고리의 메뉴 보이기
				} else {
					menu.style.display = 'none';   // 그 외의 메뉴 숨기기
				}
			});
		});
	});



$(document).ready(function(){
  $(".menu").click(function(){
    var menuPrice = $(this).find(".menu_price").text();
    $("#display_price").text(menuPrice); // '금액' 뒤에 있는 span 요소에 가격 정보 추가
  });
});

// 수량 증감에 따른 금액 계산
let selectedMenuPrice = 0;

function updatePrice() {
  let selectedQuantity = parseInt(document.getElementById('quantity').value);
  let totalPrice = selectedQuantity * selectedMenuPrice;

  document.getElementById('display_price').innerText = totalPrice.toString();
}

document.getElementById('decrease').addEventListener('click', () => {
  if (document.getElementById('quantity').value > 1) {
    document.getElementById('quantity').value--;
    updatePrice();
  }
});

document.getElementById('increase').addEventListener('click', () => {
  if (document.getElementById('quantity').value < 99) {
    document.getElementById('quantity').value++;
    updatePrice();
  }
});

document.getElementById('cancel').addEventListener('click', function() {
	  orders = [];
	  document.getElementById('order-details').innerHTML = '';
	  // 총 합계 금액 초기화
	  totalAmount = 0;
	});
	
$('#payment').click(function() {
    var selectedMenu = $(".selected_menu_name").text();
    var selectedQuantity = parseInt($("#quantity").val());
    var selectedPrice = parseInt($("#display_price").text());

    var order = {
        menuName: selectedMenu,
        quantity: selectedQuantity,
        price: selectedPrice,
    };

    $.ajax({
        url: '/saveOrders',
        type: 'POST',
        dataType: 'json',
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        data: JSON.stringify(order),
        success: function(result) {
            alert('주문이 성공적으로 완료되었습니다!');
        },
        error: function(request, status, error) {
            alert('주문 저장 중 오류가 발생했습니다: ' + error);
            console.log(order);
        }
    });
});

</script>

</body>
</html>