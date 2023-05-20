<?php include('nav.php'); ?>

<style>

body{
    /* background: -webkit-linear-gradient(left, #0072ff, #00c6ff); */
    
    background-image:url("img/back3.webp");
    background-position:center;
    background-size:cover;
    background-repeat:no-repeat;
    height:90vh;
}

.contact-form{
    background: #fff;
    margin-top: 3%;
    margin-bottom: 5%;
    width: 70%;
    height:92vh;
}

.contact-form .form-control{
    border-radius:1rem;
    margin-left:55%;
   
}

.contact-image{
    text-align: center;
}

.contact-image img{
    border-radius: 6rem;
    width: 11%;
    margin-top: -3%;
    transform: rotate(29deg);
}

.contact-form form{
    padding: 14%;
}

.contact-form form .row{
    margin-bottom: -7%;
}

.contact-form h3{
    margin-bottom: 4%;
    margin-top: -15%;
    text-align: center;
    color: #0062cc;
}

.contact-form .btnContact {
    width: 50%;
    border: none;
    border-radius: 1rem;
    padding: 1.5%;
    background: #dc3545;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin-left:80%;

}

.btnContactSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    color: #fff;
    background-color: #0062cc;
    border: none;
    cursor: pointer;
    margin-left:35%;

}

</style>
<!------ Include the above in your HEAD tag ---------->

<div class="container contact-form">
            <div class="contact-image">
                <img src="img/rocket.png" alt="rocket_contact"/>
            </div>
            <form method="post" action="data.php">
                <h3>Drop Us a Message</h3>
               <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="name"  class="form-control" placeholder="Your Name *" value="" />
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="text" name="email" class="form-control" placeholder="Your Email *" value="" />
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="text" name="phone" class="form-control" placeholder="Your Phone Number *" value="" />
                        </div>
                        <br>
                        <!-- <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div> -->
                </div>
                    <hr>
                    
                    <div class="col-md-6">
                        <div class="form-group">
                            <textarea name="msg" class="form-control" placeholder="Your Message *" style="width: 100%; height: 150px;"></textarea>
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="submit" name="btnSubmit" class="btnContact" value="Send Message" />
                        </div>
                    </div>
            
                </div>
            </form>
</div>

      <?php
      $server="localhost";
      $username="root";
      $password="";
      $db="bank";

      $connection=mysqli_connect($server,$username,$password,$db);

      $name=$_POST['name'];
      $email=$_POST['email'];
      $phone=$_POST['phone'];
      $msg=$_POST['msg'];


      $sql="INSERT INTO `details` (`name`, `email`, `phone`, `msg`) VALUES ('$name', '$email', '$phone', '$msg')";

     $rs=mysqli_query($connection,$sql);
     if($rs)
     {
        echo '<script>alert("Your message has been sent succesfully.")</script> ';
     }



include('footer.php'); ?>  