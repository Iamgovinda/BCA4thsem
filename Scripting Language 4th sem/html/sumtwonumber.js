let num1 = document.getElementById("num1").value;
let num2 = document.getElementById("num2").value;
let p = document.querySelector("#sum");
let btn = document.querySelector("#btn1");

btn.addEventListener("click", ()=>
{
	p.innerHTML = num1+num2;
})