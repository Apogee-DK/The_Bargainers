(function(){

var ele = document.getElementById("username");
ele.innerHTML = "Dexter Kwok";

var sidebar_info = document.getElementById("sidebarinfo");
var sidebar_links = document.getElementById("sidebarlinks");
var wrapper = document.getElementById("wrapper");
var showhidebutton = document.getElementById("sidebarToggle");

showhidebutton.onclick = function (){
    sidebar_info.classList.toggle('hide-sidebar');
    sidebar_links.classList.toggle('hide-sidebar');
    wrapper.classList.toggle('hide-sidebar');
}

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

        link1 = [
            'http://uaks7607eb57.apogee.koding.io/homepage.html',
            'http://uaks7607eb57.apogee.koding.io/shop.php',
            'http://uaks7607eb57.apogee.koding.io/wishlist.php',
            'http://uaks7607eb57.apogee.koding.io/accountsettings.html',
            'http://uaks7607eb57.apogee.koding.io/about.html',
            'http://uaks7607eb57.apogee.koding.io/logout.html'
            ],

        inner0 = [
           '<i class=\"fa fa-home fa-2x\"></i> <span class=\"nav-text\">Home</span>',
           '<i class=\"fa fa-shopping-cart fa-2x\"></i> <span class=\"nav-text\">Search Products</span>',
           '<i class=\"fa fa-info fa-2x\"></i> <span class=\"nav-text\">About Us</span>',
           '<i class=\"fa fa-power-off fa-2x\"></i> <span class=\"nav-text\">Login</span>'
            ],

        inner1 = [
           '<i class=\"fa fa-home fa-2x\"></i> <span class=\"nav-text\">Home</span>',
           '<i class=\"fa fa-shopping-cart fa-2x\"></i> <span class=\"nav-text\">Search Products</span>',
           '<i class=\"fa fa-list fa-2x\"></i> <span class=\"nav-text\">Your Wishlist</span>',
           '<i class=\"fa fa-wrench fa-2x\"></i> <span class=\"nav-text\">Account Settings</span>',
           '<i class=\"fa fa-info fa-2x\"></i> <span class=\"nav-text\">About Us</span>',
           '<i class=\"fa fa-power-off fa-2x\"></i> <span class=\"nav-text\">Logout</span>'
           ]
    ];

function makeUL(link, array) {
    // Create the list element:
    var nav = document.createElement('nav');

    var list = document.createElement('ul');

    for(var j = 0; j < array.length; j++) {

        if(j < array.length - 1)
        // Create the list item:
            var a = document.createElement('a');
            var item = document.createElement('li');

        // Set its contents:
            a.appendChild(document.createTextNode(array[j]));
            a.href = link[j];

            item.appendChild(a);

        // Add it to the list:
            list.appendChild(item);

        if(j == array.length - 1){
            var list2 = document.createElement('ul');
            var item2 = document.createElement('li');

            list2.className = "logout"

            item2.appendChild(document.createTextNode(array[j]));
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