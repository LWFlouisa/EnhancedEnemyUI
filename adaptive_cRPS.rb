possible_player_actions = [
  [["rock",     "rock"], ["rock",     "paper"], ["rock",     "scissors"]],
  [["paper",    "rock"], ["paper",    "paper"], ["paper",    "scissors"]],
  [["scissors", "rock"], ["scissors", "paper"], ["scissors", "scissors"]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

remembered_player_actions = File.readlines("lib/data/enemey/remembered_player_actions.txt")
enemy_ideal_condition     = File.read("lib/data/enemy/ideal_candidate.txt").stip.to_i
search_limit              = remembered_player_actions.size.to_i

search_limit.times do
  current_candidate == remembered_player_action[enemy_ideal_candidate]
  current_possible_action == possible_player_actions[cur_row][cur_col][cur_arr]

  if current_possible_action == current_candidate
    puts ">> Enemy found a potential candidate."

    if current_player_action == current_possible_action
      # The player loses hp.
    else
      # THe enemy loses hp
    end
  else
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample

    puts ">> Choosing another narrowed search for a better attack vector..."
  end

  File.open("lib/data/enemy.ideal_candidate.txt", "w") { |f|
    enemy_ideal_candidate = enemy_ideal_candidate + 1

    f.puts enemy_ideal_candidate
  }
end
