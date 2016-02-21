<?php

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
        
        //$itemExplode = str_replace('"$', '"' , $itemExplode);  //remove $ sign
        
        array_push($allProducts, $itemExplode );
        //echo $itemExplode;
        //var_dump(json_decode($itemExplode));
        
  }
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
    
    <div id="sidebarlinks">
    </div>
        
    <div id="wrapper">

        <div id="main">
            <h1>The Bargainers</h1>
            <p>Come here to find the cheapest products online!</p>
        </div>
        
    
    <div id="mainPage">
        <div class="table-title">
            <h3>Search Results</h3>
            <table class="table-fill">
                <thead>
                    <tr>
                        <th class="text-left">Name</th>
                        <th class="text-left">Price</th>
                        <th class="text-left">URL</th>
                        <th class="text-left">Photo</th>
                    </tr>
                </thead>
        
                <tbody class="table-hover">
            
	   <?php  if (isset($allProducts)) 
	
	    for ($x = 1; $x <= count($allProducts); $x++) {
	        echo ' <tr id=searchR' . $x . '> ';
            //echo "Product $x:  $productArray[$x] <br />";
            //var_dump(json_decode($productArray[$x], true));
            $currentItem = json_decode($allProducts[$x], true);
            
        
             echo '<td class="text-left">' . $currentItem["Name"]  . '</td>';
             echo '<td class="text-left"> $' . $currentItem["Price"]  . '</td>';
             echo '<td class="text-left"><a target="_blank" href=" ' . $currentItem["URL"]  . ' ">' . $currentItem["URL"] . '  </td>';
             echo '<td class="text-left"><img src="' . $currentItem["Photo"]  . '"/> </td>';
             echo "</tr>";
          
         
        } //	echo $result;  
	    ?>
	            </tbody>
	        </table>
	    </div>
    </div>
    
    <script>getPartialID()</script>
    
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
    <script type="text/javascript" src="https://apis.google.com/js/client.js?onload=OnLoadCallback"></script>
    <script type="text/javascript" src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
    <script type="text/javascript">
        function selection(){
            var temp = $('tr[id^="searchR"]');
            temp.bind("click", function(){
                    temp.toggleClass("Unselected"); 
            });
        }
        selection();
    </script>
    
    
  </body>
</html>