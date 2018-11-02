# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  types = ["X", "O"]

  types.each do |type|
    WIN_COMBINATIONS.each do |win_comb|
      if board[win_comb[0]] == type && board[win_comb[1]] == type && board[win_comb[2]] == type
        return win_comb
      end
    end
  end
  return false
end

def full?(board)
  board.each do |boarditem|
    if boarditem == " "
      return false
    end
  end
  return true
end

def draw?(board)
  if won?(board)
    return true
  else
    return false
  end
end
