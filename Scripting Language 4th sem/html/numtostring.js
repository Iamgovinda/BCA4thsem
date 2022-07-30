var nw = ["","one","two","three","four","five","six","seven","eight","nine","ten","eleven","twelve","thirteen","fourteen","fivteen","sixteen","seventeen","Eighteen","Nineteen"];
var ty = ["twenty","thirty","fourty","fifty","sixty","seventy","eighty","ninty"];

let btn = document.querySelector("#btnconvert");

btn.addEventListener("click", ()=>
		{
			var n = document.getElementById("textnum").value;
			document.getElementById("converttext").innerHTML=numtoword(n);
		});


function numtoword(num)
{
	var retValue = "Not a number or Negative number";
	num = num*1;
	if(num>=0)
	{
		var digits = num.toString().split('');
		var len = digits.length;

		if(len<1||len>5)
		{
			retValue = "Number is out of range";
		}else
		{
			if(len==1) retValue = n1(num);
			else if(len==2) retValue = n2(num);
			else if(len==3) retValue = n3(num);
			else if (len==4) retValue = n4(num);
			else if(len==5) retValue = n5(num);
		}
	}
	return retValue;
}

function n1(n)
{
	return nw[n];
}

function n2(n)
{
	var d = n.toString().split(" ");
	return d[0] == 1? nw[n]: ty[d[0]-2] + " " +n1(d[1]);
}

function n3(n)
{
	var d = n.toString().split(" ");
	return n1(d[0]) + " hundred " + n2((d[1]+d[2])*1);
}

function n4(n)
{
	var d = n.toString.split(" ");
	return n1(d[0]) + " thousand " + n3((d[1] + d[2] + d[3])*1);
}

function n5(n)
{
	var d = n.toString().split(" ");
	return n2((d[0]+d[1])*1) + " thousand" + n4((d[2]+d[3]+d[4])*1);
}