
def random_number()
  number = rand(0..100)
end

def previous_number(array, guess)
  array << guess
end

def is_integer(guess)
  return true if guess.to_i.to_s == guess
  return false
end

def counter5(counter)
  return true if counter > 4
  return false
end

def out_of_range(guess)
  return true if guess > 100
  return false
end

def negative(guess)
  return true if guess < 0
  return false
end

def numbernil(guess)
  return true if guess.empty? || guess.nil?
  return false
end

computer_number = random_number
counter = 1
array = []

puts "Lets play a numbers game! Ill give you 5 chances to guess or YOU LOSE!"
puts "Enter your first guess!"


#  previous_number(array, guess)

  loop do
#puts "#{counter}"
#puts "#{array}"
    guess = gets.chomp

    if numbernil(guess)
      puts "Your input was null"
      next
    end

    if !is_integer(guess)
      puts "Thats not an integer"
      next
    end

    guess = guess.to_i

    if out_of_range(guess)
      puts "That number is WAY TOO BIG"
      next
    end

    if guess == 0
      puts "0 is not an acceptable guess"
      next
    end

    if counter5(counter)
      puts"Thats 5 guesses try again next time!"
      puts "#{computer_number}"
      exit
    end

    if
      computer_number == guess
      puts "You got it!"
      break
    end

    if
      negative(guess)
      puts "Thats a NEGATIVE number!"
      next
    end

    if

      array.include?(guess)
      puts "well give you another try"
      next
      #  previous_number(array, guess)

    elsif

      computer_number > guess
        puts "Your guess is too low!"

        #  previous_number(array, guess)
    elsif
      computer_number < guess
        puts "Your guess is too high!"
          #previous_number(array, guess)
    end
    counter += 1
    previous_number(array, guess)

  end
