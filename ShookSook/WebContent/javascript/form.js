
function toggle_signup() { 
    if (signupDiv.style.display !== 'none') {
    	signupDiv.style.display = 'none';
    }
    else {
    	signupDiv.style.display = 'block';
        loginDiv.style.display = 'none';
    }
}

function toggle_login() {
    if (loginDiv.style.display !== 'none') {
        loginDiv.style.display = 'none';
    }
    else {
        loginDiv.style.display = 'block';
    	signupDiv.style.display = 'none';
    }
}

function toggle_edit() {
    if (editDiv.style.display !== 'none') {
    	editDiv.style.display = 'none';

    }
    else {
    	editDiv.style.display = 'block';
    }
}


// בדיקה אם השדות מורכבים אך ורק ממספרים ואותיות
function isAlphaNumeric(str) {
	  var code, i, len;

	  for (i = 0, len = str.length; i < len; i++) {
	    code = str.charCodeAt(i);
	    if (!(code > 47 && code < 58) && // numeric (0-9)
	        !(code > 64 && code < 91) && // אותיות גדולת (A-Z)
	        !(code > 96 && code < 123)) // אותיות קטנות (a-z)
	    { 					
	      return false;
	    }
	  }
	  return true;
}

// בדיקה שאין ספרות- לא מופעל (הבדיקה היא אלפאנומרית בלבד)
function numsInStr(str)
{
	str = str.toString();
	for (var i =0; i<=9; i++){
		if (str.indexOf(""+i) != -1){
			return true;
		}
		
	}
	return false;
}


//	בדיקת תקינות הטופס
function valid(form)
{	
	var username = form.username.value;
	var first_name = form.first_name.value;
	var last_name = form.last_name.value;
	var password = form.password.value;
	var birth = form.birth.value;
	var email = form.email.value;

	if (isAlphaNumeric(username) === false  || isAlphaNumeric(first_name) === false  || isAlphaNumeric(last_name) === false || isAlphaNumeric(password) === false)
	{
		alert('Please input alphanumeric characters only (Only letters and numbers)');  
		return false;	
	}
	if (username === "" || username.length < 2)
	{
		alert("Username must be filled out and have atleast 2 characters");
		form.username.focus();
		return false;
	}
	if (first_name === "" || first_name.length < 2)
	{
		alert("First name must be filled out and have atleast 2 characters");
		form.first_name.focus();
		return false;
	}
	if (last_name === "" || last_name.length < 2)
	{
		alert("Last name must be filled out and have atleast 2 characters");
		form.last_name.focus();
		return false;
	}
	if (password.length < 6 || password != form.passwordConfirm.value)
	{
		alert("Password must be at least 6 characters long; both passwords must match");
		form.password.focus();
		return false;
	}
	
	// בדיקת תאריך
	var d = new Date(birth);
	if (isNaN(d.getMonth())) {
		alert("Invalid date");
	    return false;
	}
	
	/* בדיקת אימייל ידנית, בנוסף לבדיקה אוטומטית שמתבצעת באמצעות HTML5 */

    // בדיקה שבשדה יש טקסט, כרוכית, טקסט, נקודה ואז שוב טקסט שאורכו לפחות 2 תווים- בהתאם לכתובת מייל תקינה.
    // כמו כן בדיקה שהשדה אינו ריק, ושהטקסטים השונים המופיעים במייל הינם אלפאנומריים. 

	var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");

    if (email === "" || atpos < 1 || dotpos < atpos+2 || dotpos+2 >= email.length)
    {
        alert("Not a valid e-mail address");
		form.email.focus();
        return false;
    }
    if (!isAlphaNumeric(email.substring(0,atpos)) ||
    	!isAlphaNumeric(email.substring(atpos + 1,dotpos)) ||
    	!isAlphaNumeric(email.substring(dotpos + 1)))
    {
        alert("Not a valid e-mail address");
		form.email.focus();
        return false;
    }

}
