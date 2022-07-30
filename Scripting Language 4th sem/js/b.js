fileselect = document.getElementById("fileinput").files[1];


var reader = new FileReader();

reader.onload = function(e)
{
    var srcdata = e.target.result;
    document.write(srcdata);
}



