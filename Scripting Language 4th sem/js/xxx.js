let base64String = "";

function imageUploaded() {
	var file = document.querySelector(
		'input[type=file]')['files'][0];

	var reader = new FileReader();
	console.log("next");
	
	reader.onload = function () {
		base64String = reader.result.replace("data:", "")
			.replace(/^.+,/, "");

		imageBase64Stringsep = base64String;

		// alert(imageBase64Stringsep);
		console.log(base64String);
	}
	reader.readAsDataURL(file);
}

function displayString() {
	console.log("Base64String about to be printed");
	document.write(base64String);
}
