<?php

if (isset($_POST['submit']) && isset($_POST['searchQuery']))

{
	$query = $_POST['searchQuery'];
	$JSONresult = exec('python NCIXsearch.py ' . $query );
		$JSONresult2 = exec('python newegg.py ' . $query );
	
	//echo  $JSONresult;
	
	//echo $JSONresult2;
	

	
	
	//$myDict = json_decode(file_get_contents('/tmp/mydict'));
	
	//decode the JSON $JSONresult
	
	$JSONresult = trim($JSONresult, '[');       //remove the extra brackets
	$JSONresult = trim($JSONresult, ']');
	
	$JSONresult2 = trim($JSONresult2, '[');       //remove the extra brackets
	$JSONresult2 = trim($JSONresult2, ']');
	
	$JSONresult = 	$JSONresult + ', ' + 	$JSONresult2;

    $JSONresult = str_replace("}, {", "}==x=={" ,$JSONresult );

   // echo $JSONresult;

   // echo $mydict;
   
   $itemArray = explode("==x==", $JSONresult);

  // echo "=======================================";
  // var_dump($itemArray);
  //echo $itemArray[0];
  
  $productArray = array();
  

  foreach ($itemArray as $value) {
      
     // echo $value;
     
      //\xa0 is actually non-breaking space in Latin1 (ISO 8859-1), also chr(160). You should replace it with a space.
      
       $itemExplode = str_replace('\xa0', ' ', $value );    
       
         $itemExplode = str_replace("'", '"' ,$itemExplode);                  //replace single quotes with double quotes
        
        $itemExplode = str_replace(': u"', ': "' , $itemExplode);      //remove unicode mark
        array_push($productArray, $itemExplode );
        //echo $itemExplode;
        //var_dump(json_decode($itemExplode));
        
  }
  
//  print_r($productArray);

}
  


?>


<html>
<body>

Type search term:

<form method="POST" name="productSearch"
	action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
	
	<input type="text" name="searchQuery" />
	<input type="submit" value="SUBMIT" name="submit">
</form>

<div>
    <table border="1">
    
    
    <tr>   
        <th>URL</th>
        <th>Name</th>
        <th>Price</th>
    </tr>
    
	<?php  if (isset($productArray)) 
	
	for ($x = 1; $x <= count($productArray); $x++) {
	    
	   echo " <tr> ";
	   

         //echo "Product $x:  $productArray[$x] <br />";
         
         //var_dump(json_decode($productArray[$x], true));
         
         $currentItem = json_decode($productArray[$x], true);
         

         echo '<td><a target="_blank" href=" ' . $currentItem["URL"]  . ' ">' . $currentItem["URL"] . '  </td>';
         echo '<td>' . $currentItem["Name"]  . '</td>';
         echo '<td>' . $currentItem["Price"]  . '</td>';
         echo "</tr>";
         
    } //	echo $result;  
	
	
	?>
	 </table>
</div>

</body>
</html>
