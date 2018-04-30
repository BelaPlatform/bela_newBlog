require 'nokogiri'

doc = Nokogiri::HTML(readlines.join)

loop do 
  match = doc.at('section.next')
  break unless match
  match.remove
end
loop do 
  match = doc.at('section.profile')
  break unless match
  match.remove
end

puts doc.to_html

