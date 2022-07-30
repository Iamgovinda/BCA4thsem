let result = document.querySelector(".resultinp");
let btn = document.querySelector(".btn");

// console.log(result)
// console.log(btn)

btn.addEventListener("click",()=>{
    result.value = btn.innerHTML;
})


