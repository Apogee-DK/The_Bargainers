#! python3
#searchNCIX



import requests, sys, webbrowser, bs4



print('Searching...') # display text while downloading the page



#this is useful when ran in a command line, must supply the search term (goes to sys.argv[1:])

#res = requests.get('http://google.com/search?q=' + ' '.join(sys.argv[1:]))



searchString = "LCD+Monitors"



res = requests.get('http://search.ncix.com/search/?qcatid=0&q='+ searchString)



res.raise_for_status()



# TODO: Retrieve top search result links.

soup = bs4.BeautifulSoup(res.text, "html.parser")



# <a> element, h3 class="listing" , result links

linkElems = soup.select('.listing a')



#1st five results in new tabs, min to know 5 vs number of links opened

#(in case fewer than 5 results are gathered)

numOpen = min(5, len(linkElems))



for i in range(numOpen) :

	print (linkElems[i].get('href'))

   # webbrowser.open('http://google.com' + linkElems[i].get('href'))
