# get-words-use-grep
If you have a bunch of list words that you want to know which data is contain that words. You can use this

You will find two function
First function (getwords_grep) is for get the words.
Second function (getwords_bersih) is for cleansing the first function.

You'll find two dataset "data_tags.csv" and "tags.csv"
"data_tags.csv" contain file that you want to get words. List of words are stored in "tags.csv".
To get exact match you have to add \<some words here\>

Example : you want to get data that contain "sma" and here is the data "puskesmas" and "sma". The value of two data will be TRUE. To prevent that we add \<sma\>. The TRUE value will be only on "sma" 


