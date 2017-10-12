require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
links = page.css("a.lientxt")
liste = links.each{|departement| puts "http://annuaire-des-mairies.com" + departement['href'].slice!(1..33)}
