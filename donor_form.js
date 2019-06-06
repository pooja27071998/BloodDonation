function validateForm(){

	var name=document.myForm.donor_name.value;
	var email=document.myForm.donor_email.value;
    at = email.indexOf("@");
    dot = email.lastIndexOf(".");
	var password= document.myForm.donor_password.value;
	var c_password= document.myForm.donor_confirmpassword.value;
	var age=document.myForm.donor_age.value;
	var blood_group=document.myForm.donor_bloodgroup.value;
    var ques= document.myForm.donor_ques.value;
    var contact= document.myForm.donor_contact.value;
    var address= document.myForm.donor_address.value;

	if( name == "" )
         {
            alert("Please provide your name!");
        	return false;
         }

    if (at< 1 || ( dot- at< 2 )) 
         {
            alert("Please enter correct email ID");
           
            return false;
         }

    if (password== "" || password.Length<=6) {
    	alert("Please fill password with following specifications:\n Length of the password should be atleast 6");
    	return false;
    }


    if( password != c_password )
         {
            alert("Both the passwords do not match");
            return false;
         }

    if( age == "")
         {
            alert("Please enter your age");
            return false;
         }

    if( age <18)
         {
            alert("Your age should be greater than 18");
            return false;
         }

    if( blood_group == 0 )
         {
            alert("Please enter your blood group");
            return false;
         }

    if( contact == "" )
         {
            alert("Please provide your contact number");
            return false;
         }

    if( address == "" )
         {
            alert("Please provide your address");
            return false;
         }
    return true;

}