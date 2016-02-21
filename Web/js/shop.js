(function (){
    var script = document.createElement('script');
    script.src = "http://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js";
    script.type = 'text/javascript';
    document.getElementsByTagName('head')[0].appendChild(script);
    
    var name;
    var price;
    var url;
    var img;
    var idOfTableRow;
    var idData;
    
    function makeTableData(nameOfProduct, searchID) {
            
            // Create the data elemet
            var item = document.createElement('td');
            
            // Create the row element
            var row = document.createElement('tr');
            
            row.id = "tr-" + searchID;
            
            //add a class name if necessary
            
            //Append name to item
            item.appendChild(document.createTextNode(nameOfProduct));
            
            //Append item to row
            row.appendChild(item)

            // Finally, return the constructed list:
            return row;
    }
    
    $(document).ready(function(){
        $('.table-hover tr').click(function(){
            $(this).toggleClass("Selected");
            
            idOfTableRow = $(this).attr('id');
            
            name = $(this).find($("td:eq(0)")).attr('innerHTML');
            price = $(this).find($("td:eq(1)")).attr('innerHTML');
            url = $(this).find($("td:eq(2)")).attr('href');
            img = $(this).find($("td:eq(3)")).attr('src');
            idData = $(this).find($("div")).attr('value');
            
            
            if($(this).hasClass("Selected")){
                document.getElementById('tableBody').appendChild(makeTableData(name, idOfTableRow));
            }
            
            else{
                alert(idOfTableRow);
                $("#tr-" + idOfTableRow).remove();
                
            }
            
                

        });
    }); 
    
}) ();