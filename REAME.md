Name: Darren Zou
Email address: darrenzouc@gmail.com
Project Title: Genie Stockinator
GITHUB: https://github.com/darrenzou2000/genei_stockpick
Project Overview: 
	The name of the project is Genie Stockinator. This project is purely designed for fun and nothing else. The targeted audience is my friends after I show them this recording and those with humor among the students and professor. It will solve absolutely ZERO real world problems(maybe), but it will create memories and smiles :).
	This project will prompt the user for a stock or crypto ticker, or anything really, and the genie will give its opinion on whether the input is a buy or not. 
	If the input is what the genie likes, it will go to the results page and start that process, with me giving the presentation of what happens.
Project Timeline: 
Day 1: set up MAMP, create jamboard designs, assets, storyboard, figure out how to use php
Day2: code the thing in html css js sql php
Day3: fix up bugs, then write this doc.
Project Architecture
Pages:
Index -> result
Index < - > point_harvestor_9000 
Data:
User inputs -> database -> waiting for export
User Interface (UI) Design
	I want it to be a magical first sight, but then something seems off. Why is the Genie wearing a doge coin necklace? Why does he have a bitcoin hat? WHY IS THE LAMP SUPREME???? All excellent questions that lead to the Title: Genie Stockinator. In aladdin font. An input box that holds stock or crypto ticker, with an red Inquire button next to it. The idea is clear… just give the Genie a stock or crypt ticker and he will tell you how he thinks.
	The results page is designed purely for me to give a presentation, it is not user usable.
Database Design
Genie-Stocks
	Table: Stock-Picks
		Ticker - varchar(10) - holds ticker
		Result - BOOL - holds result from genie
		Date - TIMESTAMP - creation date
Functionality & Features
There are 2 main unique functionality:
The inquire button, once clicked will submit a form and a get request that will reload the site,
The PHP will scan for ticker and if it is not empty, add it to the database with the genie’s result.
The Javascript will run to determine the outcome of the stock pick and change the img and text of the genie to match after 3 seconds.
Result page: one can start voice activation with the press of “enter key” on their keyboard
Pressing the spacebar shows the next image. 
All image sources would be gathered from /assets folder
Technology Stack
Front-end -
 HTML 
JS - Jquery 3.7.0- for animation and easier dom access
CSS

Backend - 	
PHP Version 8.0.1
MYSQL running on MAMP and version: mysqlnd 8.0.1

Challenges & Mitigation
Number one challenge is to use PHP. It disgusts me to my very core but I got over it and sucked it up and watched some videos. I will never code PHP again.
The assets were a pain to make because I grab them from google images and then have to clear the background using adobe. But sometimes too much would be cleared and I would have to find new assets. It just takes time and patience.
The animations and them going where I want them to go is a challenge, but trial and error goes a long way.
References
Installing MAMP:
https://www.youtube.com/watch?v=HhA66yYAdYs
w3schools 
StackOverflow
https://api.jquery.com/
