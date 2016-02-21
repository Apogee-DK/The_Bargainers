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

var options = [
        set0 = ['Home Page','Shop', 'Log In'],
        set1 = ['Home Page', 'Shop', 'Wish List','Log Out'],
        
        link0 = [
            'http://uaks7607eb57.apogee.koding.io/homepage.html',
            'http://uaks7607eb57.apogee.koding.io/shop.php',
            'http://uaks7607eb57.apogee.koding.io/login.html'
            ],
        
        link1 = [
            'http://uaks7607eb57.apogee.koding.io/homepage.html', 
            'http://uaks7607eb57.apogee.koding.io/shop.php', 
            'http://uaks7607eb57.apogee.koding.io/wishlist.html', 
            'http://uaks7607eb57.apogee.koding.io/logout.html'
            ]
    ];

function makeUL(array, link) {
    // Create the list element:
    var list = document.createElement('ul');
    list.className = "sidemenu";

    for(var i = 0; i < array.length; i++) {
        // Create the list item:
        var a = document.createElement('a');
        var item = document.createElement('li');
        
        // Set its contents:
        a.appendChild(document.createTextNode(array[i]));
        a.title = array[i];
        a.href = link[i];
        a.id = a.title;
        
        item.appendChild(a);
        
        // Add it to the list:
        list.appendChild(item);
    }

    // Finally, return the constructed list:
    return list;
}

// Add the contents of options[0] to #foo:
if(ele.innerHTML == "Guest"){
    document.getElementById('sidebarlinks').appendChild(makeUL(options[0], options[2]));
}
else{
    document.getElementById('sidebarlinks').appendChild(makeUL(options[1], options[3]));
}

}) ();

