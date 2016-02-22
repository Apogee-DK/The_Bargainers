(function(){

var ele = document.getElementById("username");
ele.innerHTML = "Dexter Kwok";

//Setting up the type of menu items depending on login information
var options = [
        //set0 = ['Home','Search Products', 'About Us', 'Log In'],
        //set1 = ['Home', 'Shop', 'Wish List', 'About Us', 'Log Out'],

        link0 = [
            'http://uaks7607eb57.apogee.koding.io/homepage.html',
            'http://uaks7607eb57.apogee.koding.io/shop.php',
            'http://uaks7607eb57.apogee.koding.io/about.html',
            'http://uaks7607eb57.apogee.koding.io/index.html'
            ],


        icon0 = [
           '<i class=\'fa fa-home fa-2x\'></i> <span class=\'nav-text\'>Home</span>',
           '<i class=\'fa fa-shopping-cart fa-2x\'></i> <span class=\'nav-text\'>Search Products</span>',
           '<i class=\'fa fa-info fa-2x\'></i> <span class=\'nav-text\'>About Us</span>',
           '<i class=\'fa fa-power-off fa-2x\'></i> <span class=\'nav-text\'>Login</span>'
            ],

        icon1 = [
           '<i class=\"fa fa-home fa-2x\"></i> <span class=\"nav-text\">Home</span>',
           '<i class=\"fa fa-shopping-cart fa-2x\"></i> <span class=\"nav-text\">Search Products</span>',
           '<i class=\"fa fa-list fa-2x\"></i> <span class=\"nav-text\">Your Wishlist</span>',
           '<i class=\"fa fa-wrench fa-2x\"></i> <span class=\"nav-text\">Account Settings</span>',
           '<i class=\"fa fa-info fa-2x\"></i> <span class=\"nav-text\">About Us</span>',
           '<i class=\"fa fa-power-off fa-2x\"></i> <span class=\"nav-text\">Logout</span>'
           ]

        span0

        span1
    ];

function makeUL(link, array) {
    // Create the list element:
    var nav = document.createElement('nav');
    nav.className = "main-menu";

    var list = document.createElement('ul');

    for(var j = 0; j < array.length; j++) {

        if(j < array.length - 1)



        // Create the list item:




            var a = document.createElement('a');
            var item = document.createElement('li');

        // Set its contents:
            a.appendChild(array[j]);
            a.href = link[j];

            item.appendChild(a);

        // Add it to the list:
            list.appendChild(item);



        if(j == array.length - 1){
            var list2 = document.createElement('ul');
            var item2 = document.createElement('li');

            list2.className = "logout"

            item2.appendChild(array[j]);
            list2.appendChild(item2);

            list.appendChild(list2);

            break;
        }
    }

    nav.appendChild(list);

    // Finally, return the constructed list:
    return nav;
}

// Add the contents of options[0] to #foo:
if(ele.innerHTML == "Guest"){
    document.getElementById('sidebarlinks').appendChild(makeUL(options[0], options[2]));
}
else{
    document.getElementById('sidebarlinks').appendChild(makeUL(options[1], options[3]));
}

}) ();