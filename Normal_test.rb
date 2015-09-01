puts "Please enter a number"
input = gets.chomp
number = input.to_f
sum = 0.0
count = 1
    loop do

    if input.empty? || input.nil?
        break
    elsif input.to_i.to_s != input && input.to_f.to_s != input
        puts "I think there has been a mistake"
        puts "Please enter a number"
        input = gets.chomp
        number = input.to_f
    else
      puts "Your number is: #{number}"
      average = number/count
      sum += number
      puts "The sum of your number is: #{sum}"
      puts "The average is: #{average}"
      count = count +1
      puts "Please enter a number"
      input = gets.chomp
      number = input.to_f
    end
  end
