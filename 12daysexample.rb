def verse(number)
  lyrics = ["Partridge in a pear-tree",
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

  case number
  when 1
    suffix = "st"
  when 2
    suffix= "nd"
  when 3
    suffix = "rd"
  else
    suffix = "th"
  end

  puts "On the #{number}#{suffix} day of Christmas, my true love sent to me"
  puts lyrics[1..number-1].reverse
  print (number > 1 ? "and " : "")
  puts lyrics[0]

  puts ""
end

def entire_song()
  12.times do |number|
  verse(number +1)

  #(1..12).each do |number|
  #verse(number)
  
end
end
 entire_song
