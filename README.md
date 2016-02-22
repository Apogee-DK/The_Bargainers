//Searching for "mouse" and "keyboard" and "motherboard" is currently the best way to look at how our web app performs!


TODOs:
- Fix blank SEARCH results
- Wishlist page (Done)
- Shop Wishlist pop upon click (Done)
    - Submit and Cancel buttons (Done)
- User Database and product updates (Partially Done, must fix php - jQuery AJAX string passing)
- Show lowest price in search results (Done)
- Homepage (Done)

With time (Not done):
- Alter layout of webpage using CSS templates
- Change style of buttons
- Change style of search
- Finish About Us webpage

Web Application which tracks the price of a list of products which the user chooses upon their visit on our website:
- Lowest Price
- Current Price
- Retailers/Sellers (Only NCIX and Newegg for now)
 

OUTLINE

------------------------------------------------------------------------------------------------------------
WEBSITE
------------------------------------------------------------------------------------------------------------

1) Determine the APIs needed for the Website
    i - Google Shopping API
    ii- Google Custom Search API (or use SQL queries)
    
2) Figure a method to extract information from retailer websites and update the information in our SQL database
    i - Web Crawler API --> Get the cost from retailers (Amazon, Best Buy, NCIX, Newegg, Google Search)
	ii- Product Price from every retailer will be outputed in the search result 
    
3) Update price of each product every six hours (or twice daily)
	i - Update Product price when current price is less than minimum price

3) Allow users to have a "Product Track List"
	i - Users can observe an item
    	ii- Users can set the minimum price range for an item, which will alert them as soon as the product reaches that minimum value
    
4) Allow users to search website for product of interest and list them as search results
	i - Users can add product from search onto their Product Track List
	ii- Users will have to set a minimum price for an email alert

5) Allow the addition of products onto our website from users
	i - To minimize the duplication of products, it is required that the user provide us the EXACT PRODUCT NAME (OR PRODUCT ID) from the manufacturer

6) Set up a login for every user


------------------------------------------------------------------------------------------------------------
DATABASE: Account Information and Product Information
------------------------------------------------------------------------------------------------------------

Product Information Table:

1) Implement an SQL database to hold all the price information for each individual product

2) Link the SQL database to the website

3) Use the Database as a search tool using SQL queries


>> Product(webId(key), name, productid, lowestPrice)


Account Information:

1) Implement SQL database with username and password

>> userAccount(userId (key), username, password, ...account information..., productList<Array>)
