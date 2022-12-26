/**
	계산기
 */
function doCal() {
		let num1 = document.getElementById("inputA").value;
		let num2 = document.getElementById("inputB").value;
		
		document.getElementById("valueA").innerHTML = num1;
		document.getElementById("valueB").innerHTML = num2;
		document.getElementById("valueC").innerHTML = Number(num1) + Number(num2);
		
	}