#! python3
# searchNCIX

import requests, sys, webbrowser, bs4, json

#fp = open('/tmp/mydict', 'w+')

print('Searching...') # display text while downloading the page

#this is useful when ran in a command line, must supply the search term (goes to sys.argv[1:])
#res = requests.get('http://google.com/search?q=' + ' '.join(sys.argv[1:]))

#searchString = "LCD+Monitors"
#searchString = sys.argv[1:]


#res = requests.get('http://search.ncix.com/search/?qcatid=0&q=' + searchString)

res = requests.get('http://search.ncix.com/search/?qcatid=0&q=' + ' '.join(sys.argv[1:]))

res.raise_for_status()


soup = bs4.BeautifulSoup(res.text, "html.parser")


# <a> element, soap class="listing" , result links

linkElems = soup.select('.listing a')
linkPrices = soup.select('.listing strong')

#1st five results in new tabs, min to know 5 vs number of links opened

#(in case fewer than 5 results are gathered)

numOpen = min(10, len(linkElems))


#list of Products
productList = []

for i in range(numOpen) :
	tempDict = {'URL':'','Name':'','Price': 0.00}

	tempDict['URL'] = linkElems[i].get('href')

	tempDict['Name'] = linkElems[i].getText()

	#for linkPrices, we skip 2 counts for the headers
	tempDict['Price'] = linkPrices[i+3].getText()
	
	productList.append(tempDict)
	
	#json.dump(fp, tempDict)

print(productList)

#print (linkElems[i].get('href'))	# product URL

#print (linkElems[i].getText())		# product Name

#for linkPrices, we skip 2 counts for the headers

#print (linkPrices[i+3].getText())	#product price

   

   




