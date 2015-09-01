#prompt user 5 times for words to test as palindrones
counter = 0

while(counter < 5)
    puts "Please enter a word you think is a palindrome: "
    word = gets.chomp
    if word.reverse == word
      puts "You found a palindrome!"
    else
      puts "That is not a palindrome!"
    end
  counter = counter + 1
end
