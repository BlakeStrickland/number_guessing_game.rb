

def verse(n)
  start = "My true love sent to me"
  verse = ["Partridge in a pear-tree",
  "Turtle doves",
  "French hens",
  "Colly birds",
  "Gold rings",
  "Geese a laying",
  "Swans a swimming",
  "Maids a milking",
  "Drummers drumming",
  "Pipers piping",
  "Ladies dancing",
  "Lords a leaping"]

  puts "#{start}"
  puts "#{verse(n)}"
end

def entire
  start = "My true love sent to me"
  verse = ["Partridge in a pear-tree",
  "Turtle doves",
  "French hens",
  "Colly birds",
  "Gold rings",
  "Geese a laying",
  "Swans a swimming",
  "Maids a milking",
  "Drummers drumming",
  "Pipers piping",
  "Ladies dancing",
  "Lords a leaping"]

  puts "#{verse.to_s}"
end


puts "Enter where you want to begin"
line = gets.chomp

if line == 12
  entire
else
  verse(line)
end

start = "My true love sent to me"
verse = ["Partridge in a pear-tree",
"Turtle doves",
"French hens",
"Colly birds",
"Gold rings",
"Geese a laying",
"Swans a swimming",
"Maids a milking",
"Drummers drumming",
"Pipers piping",
"Ladies dancing",
"Lords a leaping"]
