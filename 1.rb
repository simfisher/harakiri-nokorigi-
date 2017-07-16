require 'rubygems'
require 'nokogiri'
require 'open-uri'


PAGE_URL = 'http://ruby.bastardsbook.com/files/hello-webpage.html'

#Selection with xpath
puts "Selecting with xpath"
#'//*[@id="references"]/p[3]/a'

page = Nokogiri::HTML(open(PAGE_URL))
xpath1 = '//*[@id="references"]/p[3]/a'

elements = page.xpath(xpath1)

elements.each do |element|
	puts element.text
	puts element['href']
end

#Selection with xpath
puts ""
puts "Now selecting with css"
links = page.css('div#references a')

links.each do |link|
	puts "For #{link.text} go to -> #{link['href']}"
end
