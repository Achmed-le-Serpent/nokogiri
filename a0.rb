require 'nokogiri'
require 'open-uri'

mailv = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
mailv.css('p:contains("@")').each do |node|
puts node.text
end