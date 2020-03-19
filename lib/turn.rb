def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end # end board


def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end # end input_to_index


def valid_move?(board, index)
  def position_taken?(array, ind)
    if (array[ind] == " " || array[ind] == "" || array[ind] == nil)
      return false
    else
      return true
    end
  end # end position_taken?

  def on_board?(ind)
    if (ind.between(0,8) == true)
      return true
    else
      return false
    end
  end # end on_board?

  if (position_taken?(board, index) == false && (on_board?(index) == true))
    return true
  else
    return false
  end
end # end valid_move


def move(board, index, token = "X")
  board[index.to_i] = token
end # end move

def turn(board)
  puts "Please enter 1-9: "
  input = gets.strip
  display_board(board)
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end # end turn
