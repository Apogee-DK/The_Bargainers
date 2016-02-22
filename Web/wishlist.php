<?php


//session_start();
$authenticated = false;

include('php-python/db_connect.php');       //needed for DB connection

//hardcode Session user, normally we should get this info after making sure user logged-in (and registered)
$_SESSION['login_user'] = 'user1';


if (isset($_SESSION['login_user']))
{

   // if (isset($_POST['submitWish'])) {             //wishlist button clicked
    
    
    	$login_session = $_SESSION['login_user'];
    	$authenticated = true;

        	$conn2 = setUpConnection();			//execute query	
        	$sql2 = "SELECT productList
        	        FROM UserAccount
			        WHERE username = '"  .  $login_session   .  "' ;"  ;	
			        
			        
			$result2 = $conn2->query($sql2);
	
        
        	if ($result2->num_rows > 0) {
        			$row = $result2->fetch_assoc();
        			$wishListArray =  explode("," , $row['productList']);

        	}
        	$conn2->close();

       // echo "WISHLIST SAVE";
        
         //now this is an underscore-separated values that corresponds to webID of seleted Items
        //echo $_POST['webID'];          
        
        //this string should then be saved to the database, indicating the users wishlist
    
        
   // }


}

?>

<!doctype html>
<html>
  <head>
    <meta name="google-site-verification" content="PtlTebFoue90iB2Sc9zKLJRERVBuDYqTO50mBJqCgt0"/>
    <link rel="stylesheet" href="http://uaks7607eb57.apogee.koding.io//css/index.css">
  </head>
  <body>
  
    <div id="sidebarinfo">
        <img src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAXaAAAAJGIxNDMxZTA5LTlkMzMtNGZkNi1iY2E1LTE1ZGYzMGRmYTk1OA.jpg" alt="Headshot" class="headshot"/>
        <span id="username">Guest</span> 
        <button id="sidebarToggle">Toggle Menu</button>
    </div>    
    
    <div id="sidebarlinks">
        <script>loadingWebPage()</script>
    </div>
        
    <div id="wrapper">

        <div id="main">
            <?php 
            if (isset($_SESSION['login_user'])) {
                echo "<h2>Welcome to your wishlist,". $_SESSION['login_user'] . " </h2>";
                }
        
            ?>
        </div>
        
        <div id="mainPage" ng-controller="TodoListController as todoList">
        

        
            <table border="1">
            
            
            <tr> 
                         <th>Name</th>
                        <th>Price</th>
                        <th>URL</th>
                        <th>Photo</th>
            </tr>
            
            <?php 
             if (isset($wishListArray)) {
                 
                 $conn2 = setUpConnection();			//execute query	

                 foreach ($wishListArray as $value) {
                     
                        //query DB for all info on a certain wishlist item webID
                        
                        $sql2 = "SELECT *
            	        FROM Product
    			        WHERE webID = '"  .  $value   .  "' ;"  ;
    			        
    			        //echo $sql2;
    			        
            			$result2 = $conn2->query($sql2);
            	
                    
                    	if ($result2->num_rows > 0) {
                    	    
                    	    while($row = $result2->fetch_assoc()) {
                    	    
                    	        echo "<tr>";
                    			 echo '<td>' . $row["name"]  . '</td>';
                                 echo '<td> $' . $row["lowestPrice"]  . '</td>';
                                 echo '<td><a target="_blank" href=" ' . $row["URL"]  . ' ">' . $row["URL"] . '  </td>';
                                 echo '<td><img src="' . $row["photoURL"]  . '"/></td>'; 
 
                                echo "</tr>";
                                
                    	    }
                    	}
                    //	else {
                    //	    echo "Wishlist empty";
                    //	}
                    
    
                     
                 }
                 
                 
                 	$conn2->close();
                 
                 
             }
            ?>
            
            
            
            
            </table>
            
            
            
        </div>
    </div>


    <div id="footer">
        &copy; 2015 The Bargainers Ltd.
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/index_sidebar.js"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/index.js"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/index_controller.js"></script>
    
    <script type="text/javascript" src="https://apis.google.com/js/client.js?onload=OnLoadCallback"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/userInformation.js"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/authenticationAPI.js"></script>
    <script type="text/javascript" src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
    
  </body>

</html>  








