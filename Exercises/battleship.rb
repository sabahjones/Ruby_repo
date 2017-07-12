board = []

# Create Board Matrix
5.times do ||
  board.push(["0", "0", "0", "0", "0"])
end

# Pretty Print The Board
def print_board(board)
  for row in board
    puts (row.join(" "))
  end
end


# Get Random Coords
def random_row(board)
  return rand(0..board.length - 1)
end

def random_col(board)
  return rand(0..board[0].length - 1)
end


# Start The Game
puts ("Let's play Battleship!")
print_board(board)


# Store The Ship Coords In A Dictionary
ship_coords = {}
ship_coords[:rows] = [random_row(board)]
ship_coords[:cols] = [random_col(board)]

row = [true, false].sample

our_pick = ''

if row
  puts 'row picked, manipulate row'
  current_row_coordinate = ship_coords[:rows][0]

  if(current_row_coordinate == 4)
    our_pick = 3
  else
    our_pick = current_row_coordinate + 1
  end

  ship_coords[:rows].push(ship_coords[:cols][0])
  ship_coords[:cols].push(our_pick)
else
  puts 'column picked, manipulate column'
  current_col_coordinate = ship_coords[:cols][0]

  if(current_col_coordinate == 4)
    our_pick = 3
  else
    our_pick = current_col_coordinate + 1
  end

  ship_coords[:rows].push(our_pick)
  ship_coords[:cols].push(ship_coords[:cols][0])
end

# UNCOMMENT THIS LINE FOR TESTING
# print str(ship_coords['row']) + ', ' + str(ship_coords['col'])

counter = 0
# Main Game Loop -- User Has 4 Tries
for turn in (0...6)
  puts "Turn ##{turn + 1}"
    # Get Coords From User

  guess_coords = {}
  puts "Guess Row:"
  guess_coords[:row] = gets.to_i
  puts "Guess Col:"
  guess_coords[:col] = gets.to_i

  # Check If Guess Matches The Ship
  if ship_coords[:rows].include?(guess_coords[:row]) and ship_coords[:cols].include?(guess_coords[:col])
    counter = counter + 1
    puts "You hit my battleship!"
    board[guess_coords[:row]][guess_coords[:col]] = "H"
    if counter == 2
      puts 'Congrats you sob'
      break
    end
  else
    # Print Appropriate Message To User
    if (guess_coords[:row] < 0 or guess_coords[:row] > 4) or (guess_coords[:col] < 0 or guess_coords[:col] > 4)
      puts "Oops, that's not even in the ocean."
    elsif(board[guess_coords[:row]][guess_coords[:col]] == "X" or board[guess_coords[:row]][guess_coords[:col]] == 'H')
      puts "You guessed that one already."
    else
      puts "You missed my battleship!"
      board[guess_coords[:row]][guess_coords[:col]] = "X"
    end
  end


  if turn == 5
    puts "Game Over"
  end

# Stop User So They Can Read Message
  puts "PRESS ANY KEY TO CONTINUE..."
  gets
  print_board(board)

end
