    function makeTableData(nameOfProduct, searchID) {
            
            // Create the data elemet
            var item = document.createElement('td');
            
            // Create the row element
            var row = document.createElement('tr');
            
            row.id = "tr-" + searchID; //ID for wish list rows
            
            //add a class name if necessary
            row.className = "wishListItems";
            
            //Append name to item
            item.appendChild(document.createTextNode(nameOfProduct));      
            
            
            //Append item to row
            row.appendChild(item)

            // Finally, return the constructed list:
            
            return row; //<tr><td>nameOfProduct</td></tr>
    }
    
var numOfProductsOnList = 0;

(function (){
    var script = document.createElement('script');
    script.src = "http://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js";
    script.type = 'text/javascript';
    document.getElementsByTagName('head')[0].appendChild(script);
    
    var name, price, url, img, idOfTableRow, idData, arrayOfWebIDs;
    
    
    if(numOfProductsOnList > 0 && !($("#wishMenu").hasClass("notEmpty"))){
         $("#wishMenu").toggleClass("notEmpty");
         alert(numOfProductsOnList);
    }
    
    $(document).ready(function(){
        $('.table-hover tr').click(function(){
            $(this).toggleClass("Selected");
            
            if($(this).hasClass("Selected")){
                numOfProductsOnList = numOfProductsOnList + 1;
            }
            
            else{
                numOfProductsOnList = numOfProductsOnList - 1;
            }
            
            idOfTableRow = $(this).attr('id');
            
            name = $(this).find($("div #name")).attr('value');
            price = $(this).find($("div #Price")).attr('value');
            url = $(this).find($("div #URL")).attr('value');
            img = $(this).find($("div #webID")).attr('value');
            idData = $(this).find($("div #webID")).attr('value'); //<------THIS THING IS THE WEB ID
            
            var print = "" + name + price + url + img + idData;
            
            alert(print);
        
            if($(this).hasClass("Selected")){
                document.getElementById('tableBody').appendChild(makeTableData(name, idOfTableRow)); //we're here
            }
            
            else{
                //alert(idOfTableRow);
                $("#tr-" + idOfTableRow).remove();
                //("#" + idOfTableRow).toggleClass();
            }
        });

    }); 
    
    $("#submitWish").on("click", function(){
            var array = [];
            
            $(".table-hover div #webID").each(function(){
                array.push(this.value);
            });
            
            $("#selectedWebIDs").value = array;
            
            $(".wishListItems").remove();
            
            numOfProductsOnList = 0;
	});
	
    
    $("#cancelWish").on("click", function(){
            $(".wishListItems").remove();
            numOfProductsOnList = 0;
    });
   
    
    if(numOfProductsOnList === 0 && $("#wishMenu").hasClass("notEmpty")){
        $("#wishMenu").toggleClass("notEmpty");
    }
    
}) ();