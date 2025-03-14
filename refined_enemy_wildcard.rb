#          ROCK PAPER SCISSORS
# ROCK     R,R  R,P   R,S
# PAPER    P,R  P,P   P,S
# SCISSORS S,R  S,P   S,S

def refined_enemy_wildcard
  en_retries = 0 # Sets or resets enemy retries to none.

  loop do
    if en_retries > 3
      puts " >> Enemy lost its turn..."

      break
    end

    possible_conditions = [
      [["ROCK",     "ROCK"], ["ROCK" ,    "PAPER"], ["ROCK",     "SCISSORS"]],
      [["PAPER",    "ROCK"], ["PAPER",    "PAPER"], ["PAPER",    "SCISSORS"]],
      [["SCISSORS", "ROCK"], ["SCISSORS", "PAPER"], ["SCISSORS", "SCISSORS"]],
    ]

    first_stalmate   == possible_conditions[0][0][0]
    second_stalemate == possible_conditions[1][1][0]
    third_stalemate  == possible_conditions[2][2][0]

    row_options = [0, 1, 2]
    col_options = [0, 1, 2]
    arr_options = [0, 1]

    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    @cchoice = possible_conditions[cur_row][cur_col][cur_arr]

    if    @cchoice ==  first_stalemate; puts " >> Enemy decided to retry its action..."; en_retries = en_retries + 1
    elsif @cchoice == second_stalemate; puts " >> Enemy decided to retry its action..."; en_retries = en_retries + 1
    elsif @cchoice ==  third_stalemate; puts " >> Enemy decided to retry its action..."; en_retries = en_retries + 1
    else
      puts ">> Enemy chose their next action..."

      break
    end
  end
end
