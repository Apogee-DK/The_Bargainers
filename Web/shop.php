<?php

include('php-python/db_connect.php');              //needed for DB connection

if (isset($_POST['submit']) && isset($_POST['searchQuery']))

{
	$query = $_POST['searchQuery'];
	$JSONresult = exec('python ./php-python/NCIXsearch.py ' . $query );
	$JSONresult2 = exec('python ./php-python/newegg.py ' . $query );
	
	//$myDict = json_decode(file_get_contents('/tmp/mydict'));
	
	//decode the JSON $JSONresult
	
	$JSONresult = trim($JSONresult, '[');       //remove the extra brackets
	$JSONresult = trim($JSONresult, ']');
	
	$JSONresult2 = trim($JSONresult2, '[');       //remove the extra brackets
	$JSONresult2 = trim($JSONresult2, ']');
	

    $JSONresult = str_replace("}, {", "}==x=={" ,$JSONresult );
     $JSONresult2 = str_replace("}, {", "}==x=={" ,$JSONresult2 );
   
   $itemArray = explode("==x==", $JSONresult);
   $itemArray2 = explode("==x==", $JSONresult2);

  // echo "=======================================";
  // var_dump($itemArray);
  //echo $itemArray[0];
  

$allProducts = array();
	
	
  foreach ($itemArray as $value) {
      
     // echo $value;
     
      //\xa0 is actually non-breaking space in Latin1 (ISO 8859-1), also chr(160). You should replace it with a space.
      
         $itemExplode = str_replace('\xa0', ' ', $value );    
         $itemExplode = str_replace("'", '"' ,$itemExplode);                  //replace single quotes with double quotes
         $itemExplode = str_replace(': u"', ': "' , $itemExplode);      //remove unicode mark
         array_push($allProducts, $itemExplode );
        //echo $itemExplode;
        //var_dump(json_decode($itemExplode));
        
  }
  
  
    foreach ($itemArray2 as $value) {
      
     // echo $value;
     
      //\xa0 is actually non-breaking space in Latin1 (ISO 8859-1), also chr(160). You should replace it with a space.
       $itemExplode = str_replace('\xa0', ' ', $value );    
         $itemExplode = str_replace("'", '"' ,$itemExplode);                  //replace single quotes with double quotes
        $itemExplode = str_replace(': u"', ': "' , $itemExplode);      //remove unicode mark

        array_push($allProducts, $itemExplode );
        //echo $itemExplode;
        //var_dump(json_decode($itemExplode));
        
  }
  
  //array_pop($allProducts);          //pop weird empty element at the end

  //########################### SAVE TO DATABASE #############################
  
 // session_start();
  
  //$authenticated = false;
  
  
    $productList = array();
  
      	//prepare database connection
    	$conn = setUpConnection();
  
        for ($y = 0; $y < count($allProducts); $y++) {

            $currentItem = json_decode($allProducts[$y], true);         //decode JSON from python script

            //each JSON is in associative (Key-value pair) format
            // "URL"=>"", "Name"=>"", "Price"=>0.00, ...

             $webID =  md5($currentItem["URL"])  ; 
            
            
            //###### CHECK if current product is already in Database #########
            
            $sql = "SELECT * 
                    FROM Product
                    WHERE webID = '" . $webID . "';";
                    
           // echo $sql;

            $duplicate = $conn->query($sql);
            
           // echo ("numrows:" . $duplicate->num_rows);
            
            //FOR CHECKING, print the duplicates
            //while($row = $duplicate->fetch_assoc()) {
                //echo $row["webID"];   
            //}
            
            
            if ($duplicate->num_rows == 0)          //if there is no duplicates  
            {
                    //need to attach '' for MySQL strings
                    
                    $webID =  "'" . $webID . "'"   ; 
                    $productID =  substr($currentItem["Name"], 20);     
                    $productID = "'" . str_replace(' ', '', $productID) ."'" ;      //strip spaces
                    
                    $name = "'" . $currentItem["Name"] . "'" ;
                    $URL = "'" . $currentItem["URL"] . "'" ;
        
                    $lowestPrice = $currentItem["Price"] ;
                    $photoURL = "'" . $currentItem["Photo"] . "'"   ;
                    
                    
                    //$currentItem["webID"] = $webID;
            
                	//prepared statements
                    /*	$stmt = $conn->prepare("INSERT INTO Product (webID, name, URL, productID, lowestPrice, DateAdded, photoURL, description ) 
                    	                        VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
                    	$stmt->bind_param("ssssdsss", $webID, $name, $URL, $productID, $lowestPrice, date('Y-m-d h:i:s'),  $photoURL, "some description");
                    	$stmt->execute();
                    */
                
                    $date = "'" . date('Y-m-d h:i:s') . "'";
                    
                    $sql = " INSERT INTO Product (webID, name, URL, productID, lowestPrice, DateAdded, photoURL, description ) 
                           VALUES ( $webID, $name, $URL, $productID, $lowestPrice,$date , $photoURL, 'some description')";                                         
                    
                   // echo $sql;
                
                // ERROR INFO
                    //if ($conn->query($sql) === TRUE)  ;
                    //else 
                    //    echo "Error: " . $sql . "<br>" . $conn->error;
                
            }
        } //	end for 

  
  $conn->close();
  
  
  //###################################################################
}
elseif (isset($_POST['submitWish'])) {             //wishlist
  
    echo "WISHLIST SAVE";
    
     //now this is an underscore-separated values that corresponds to webID of seleted Items
    echo $_POST['selectedWebIDs'];          
    
    //this string should then be saved to the database, indicating the users wishlist
    
    
    $conn = setUpConnection(); 
    
    
    //TODO establish user AUTHENTICATION and registration
    
    //SAVE INTO database, update productList (WISHLIST) of logged-in user

    // we assume a user is logged in and these info are already stored in database
    $userID = 1;
    $username = 'user1';
    $password = 'userone';
    $address = '123 Fake Street';
    $phone = '123-456-7810';
    
    
    $productList = $_POST['selectedWebIDs'];
    
    
        $sql = " UPDATE UserAccount 
                 SET productList ='" . $productList . "'" .
              " WHERE username ='" . $username . "'" .
              " AND password ='" . $password . "';";
                                                
    
        echo $sql;

        if ($conn->query($sql) === TRUE)  ;
        else 
            echo "Update Error: " . $sql . "<br>" . $conn->error;
  
}


?>

<html lang="en">
  <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <meta name="google-site-verification" content="PtlTebFoue90iB2Sc9zKLJRERVBuDYqTO50mBJqCgt0"/>
    <link rel="stylesheet" href="http://uaks7607eb57.apogee.koding.io//css/index.css">
    <link rel="stylesheet" href="http://uaks7607eb57.apogee.koding.io//css/shop.css">
    <meta charset="utf-8" />
    <title>Table Style</title>
    <meta name="viewport" content="initial-scale=1.0; maximum-scale=1.0; width=device-width;">
  </head>
  
  <body>
  
    <div id="sidebarinfo">
        <img src="https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAXaAAAAJGIxNDMxZTA5LTlkMzMtNGZkNi1iY2E1LTE1ZGYzMGRmYTk1OA.jpg" alt="Headshot" class="headshot"/>
        <span id="username">Guest</span> 
        <button id="sidebarToggle">Toggle Menu</button>
    </div>    
    
    <div id="sidebarlinks"></div>
        
    <div id="wrapper">

        <div id="main">
            <h1>The Bargainers</h1>
            <p>Come here to find the cheapest products online!</p>
        </div>
        
        
    <div id="wishMenu">
            <table id="wishListMenu">
                <thead>
                    <tr>
                        <th class="text-left">List of Items</th>
                    </tr>
                </thead>
                <tbody id="tableBody">
                
                
                
                </tbody>
            </table>
            <span>
                <input id="submitWish" type="submit" value="Add to List" name="submitWish">
                <input id="cancelWish" type="submit" value="Cancel" name="submitWish">
            </span>
    </div>
    
    
    
    <div id="mainPage">
        <div class="table-title">
            <?php  if (isset($_POST['searchQuery'])) 
            echo "<h3>Search Results</h3>";
            ?>
            <table class="table-fill">
                <thead>
                    <tr>
                        <th class="text-left">Name</th>
                        <!--th class="text-left">Lowest Price</th--> 
                        <th class="text-left">Price</th>
                        <th class="text-left">URL</th>
                        <th class="text-left">Photo</th>
                    </tr>
                </thead>
        
                <tbody class="table-hover">

                
                                 <div>
                                   <form method="POST" name="productWish" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
                                    <!--form method="POST" name="productWish" action="wishlist.php"-->                        
                                    	   <?php  if (isset($allProducts)) 
                                    	   
                                    	   
                                            $webIDtemp = "";
                                	        $productIDtemp = "";
                                	
      
                                    	    for ($x = 0; $x < count($allProducts); $x++) {
                                    	        echo ' <tr id=searchR' . $x . '> ';
                                    	        
                                                
                                                $currentItem = json_decode($allProducts[$x], true);
                                                
                                                
                                                //ADDED TO PRODUCE the webID
                                                $productID =  substr($currentItem["Name"], 20);     
                                                $productID = "'" . str_replace(' ', '', $productID) ."'" ;      //strip spaces
           
                                                //TODO
                                                 //echo "<input type='checkbox'/>";
                                                //accumulate the webID and productID, a selection mechanism should determine only the ones selected
                                                
                                                //need a script which checks which ones are selected
                                                
                                                
                                                $webID =  md5($currentItem["URL"]);

                                               // $webIDtemp .=  md5($currentItem["URL"]) .  ",";
                                               
                                               $name = $currentItem["Name"];
                                               $url = $currentItem["URL"];
                                               $price = $currentItem["Price"];
                                               $photo = $currentItem["Photo"];
                                                
                                            
                                                 echo '<td class="text-left">' . $currentItem["Name"]  . '</td>';
                                                 echo '<td class="text-left"> $' . $currentItem["Price"]  . '</td>';
                                                 echo '<td class="text-left"><a target="_blank" href=" ' . $currentItem["URL"]  . ' ">' . $currentItem["URL"] . '  </td>';
                                                 echo '<td class="text-left"><img src="' . $currentItem["Photo"]  . '"/>'; 
                                                 
                                                 echo "<div style='display:none;'> 
                                                    <input type='hidden' id='webID' name='webID' value='$webID' />
                                                 </div>";
                                                 
                                                 echo "<div style='display:none;'> 
                                                    <input type='hidden' id='name' name='name' value='$name' />
                                                 </div>";
                                                 
                                                 echo "<div style='display:none;'> 
                                                    <input type='hidden' id='Price' name='Price' value='$price' />
                                                 </div>";
                                                 
                                                 echo "<div style='display:none;'> 
                                                    <input type='hidden' id='URL' name='url' value='$url' />
                                                 </div>";
                                                 
                                                 
                                                 echo "<div style='display:none;'> 
                                                    <input type='hidden' id='Photo' name='Photo' value='$photo' />
                                                 </div>";
                                                 
                                                 echo "</td></tr>";
                                              
                                             
                                            } //	echo $result;  
                                                
                                                //THIS WOULD PASS THE webID to POST for PHP when Save to Wishlist is clicked

                                                 //HIDDEN INPUT
                                                 echo "<input class='wishItems' type='hidden' id='selectedWebIDs' name='selectedWebIDs' value='' />";


                            
                                                 echo '<span>
											        <input id="submitWish" type="submit" value="SAVE WISHLIST" name="submitWish">
										        </span>';

                                    	    ?>
                    	            </form>
                            </div>
	                </tbody>
	            </table>
	        </div>
        </div>
    

    
    
    <div id="searchQuery">
        <form method="POST" name="productSearch" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
	        <span>
	            <input id="searchInput" type="text" name="searchQuery" placeholder="type search text here"/>
	            <input id="submitButton" type="submit" value="SUBMIT" name="submit">
	        </span>
        </form>
    </div>

    <div id="footer">
        &copy; 2015 The Bargainers Ltd.
    </div>
    

    <button id="authorize-button" style="visibility: hidden">Authorize</button>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/index_sidebar.js"></script>
    <script type="text/javascript" src="http://uaks7607eb57.apogee.koding.io//js/shop.js"></script>
    <script type="text/javascript" src="https://apis.google.com/js/client.js?onload=OnLoadCallback"></script>
    <script type="text/javascript" src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>

    <script>
        $("#submitWish").on("click", function(){
            
            
        })
    </script>
    
  </body>
</html>