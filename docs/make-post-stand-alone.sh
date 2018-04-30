#!/bin/bash

OUTPUT=$3
DESTINATION_URL=$2
mkdir -p $OUTPUT

cat $1 |\
sed "s/Bela Blog/Bela/g" |\
grep -v "Back to Blog" |\
sed 's|\(og:url.*content="\).*\(".*\)|\1'$DESTINATION_URL'\2|' |\
sed 's|\(twitter:url.*content="\).*\(".*\)|\1'$DESTINATION_URL'\2|' |\
sed 's|\(rel="canonical".*href="\).*\(".*\)|\1'$DESTINATION_URL'\2|' |\
sed 's|\.\./\.\./\.\./\.\./||' |\
# remove extra items that require HTML parsing
ruby -rnokogiri -e '
doc = Nokogiri::HTML(readlines.join);
loop do 
  match = doc.at("a.category_link")
  break unless match
  match.parent.remove # remove containing element
end
loop do 
  match = doc.at("section.next")
  break unless match
  match.remove
end
loop do 
  match = doc.at("section.profile")
  break unless match
  match.remove
end

puts doc.to_html
' |
cat > $OUTPUT/index.html

mkdir -p $OUTPUT/assets/images/
cp -r _site/assets/js $OUTPUT/assets/
cp -r _site/assets/css $OUTPUT/assets/
echo "You should manually copy the images you need to $OUTPUT/assets/images"
