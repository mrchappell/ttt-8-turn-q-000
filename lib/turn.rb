board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end


def valid_move?(board, index)
  if position_taken?(board, index.to_i - 1)
    false
  elsif index.to_i - 1 >= 0 && index.to_i - 1 <= 8
    true
  end
end


def move(board, index, val = "X")
  board[index.to_i - 1] = val
end


def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  
  if valid_move?(board, index) == true
    move(board, index)
    puts display_board(board)
  else
    turn(board)
  end
end
