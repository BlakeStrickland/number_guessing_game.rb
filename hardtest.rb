=begin
This homework assignment is to get input from a user (integer or string)

if the user input is an integer it will;
  generate the sum and the average
  puts the original integer, sum and average
  continue until a string is entered or enters ""
if the user input is a string it will;
  continue asking for more strings until user enters an integer or ""
  concatenate each string side by side and puts them on one line

=end
#prompts user for input
puts "Please enter a number or string"
#stores user input into variable input
input = gets.chomp
#creates a variable where input is a Float
number = input.to_f
#creates variable sum type Float
sum = 0.0
#creates counter
count = 1
#creates string sentance
sentance = ""
#creates boolean is_number_type to use as condition
is_number_type = true

#begins loop to check if user input is "" or nil
    loop do
      if input.empty? || input.nil?
        #breaks if either condition holds true
          break
          #begins if count is equal to 1
      elsif  count == 1
        #tests to see if user input is a string
        if input.to_i.to_s == "0"
          #returns false if user input is not a string
          is_number_type = false
          #tests to see if user input is ("2">2>"2" is not equal to "2")
          #and ("2">2.0>"2.0" is equal to "2")
        else input.to_i.to_s != input && input.to_f.to_s == input
          #returns true if user input is an integer
          is_number_type = true
        end
        #************** ask if this elsif is needed **********************************
      elsif input.to_i.to_s == "0"
        #if user input enters a integer while in the string loop
        if is_number_type == true
          #puts error message and quit
          puts "Mixed input you messed up."
          break
        end
        #concatinate all user string inputs into sentance variable
        sentance = "#{sentance}" + "#{input}"
        #prompts user for another string
        puts "Please enter another string"
        #rewrites input variable with new user input
        input = gets.chomp
        #puts sentance variable
        puts "#{sentance}"

      else
        #if user enters a string while in the integer loop
        if is_number_type == false
          #puts error message and quit
          puts "Mixed input you messed up "
          break
        end
        #tests to see if users input ("2">2>"2" is equal to "2")
        #and ("2">2.0>"2.0" is not equal to "2")
        input.to_i.to_s == input && input.to_f.to_s == input
        #puts user number
        puts "Your number is: #{number}"
        #intializes average variable
        average = number/count
        #initalizes sum variable
        sum += number
        #puts user sum
        puts "The sum of your number is: #{sum}"
        #puts user average
        puts "The average is: #{average}"
        #repropts user for another integer
        puts "Please enter a number"
        #stores new value of input
        input = gets.chomp
        #stores new value of input in number variable as type Float
        number = input.to_f
      end
      #increase counter by 1 each loop
      count = count +1
    end
