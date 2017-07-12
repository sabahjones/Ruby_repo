

def guess_number guess

  number = 25
  if guess > number
    puts "guess is too high"
  end
  if guess < number
    puts "guess is too low"
  end
  if guess == number
    puts "you guessed the right number!"
  end
end #end function

puts "guess a number! (*hint it's 25)"
guess = gets.to_i
guess_number guess
