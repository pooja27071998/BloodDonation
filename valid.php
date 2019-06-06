<?php
$db = mysqli_connect('localhost','root','','id7406017_registration');
$q = $_REQUEST["qa"];
$hint='';
 if($q !== ""){
     if (strpos($q,'@gmail.com')!==false){
        $sql="SELECT email FROM donor where email = '".$q."'";
            $result=mysqli_query($db,$sql);

            if(mysqli_num_rows($result)>0){
                $hint = 'email already taken!';

                echo $hint;
            }

            else{
                $hint = "Valid email";
                echo $hint;

                
            }
        }
}
echo $hint === "" ? "Invalid email":"";
    // echo "invalid email.";


// Output "no suggestion" if no hint was found or output correct values 

/// ph mail otp



?>