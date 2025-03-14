$player_hp = 10
$enemy_hp  = 10

loop do
  if $player_hp < 1
    system("clear")

    puts "YOU WON"

    abort
  elsif $enemy_hp < 1
    system("clear")

    puts "GAME OVER"

    abort
  end

  possible_ciphertexts = [
    "EBPX",
    "FPVFFBEF",
    "CNCRE",
  ]

  possible_plaintext = [
    "ROCK",
    "SCISSORS",
    "PAPER",
  ]

  random_num         = [0, 1, 2]
  chosen_num         = random_num.sample

  decrypted_states = {
    "ROCK"     =>    "PAPER",
    "PAPER"    => "SCISSORS",
    "SCISSORS" =>     "ROCK",
  }

  current_ciphertext      = possible_ciphertexts[chosen_num]
  current_plaintext       = possible_plaintext[chosen_num]
  enemy_guessed_plaintext = possible_plaintext.sample

  puts " CIPHERTEXT >> #{current_ciphertext}"

  print "What is the plaintext? >> "
  @choice  = gets.chomp.upcase
  @cchoice = enemy_guessed_plaintext

  puts " >> Your choice is: #{@choice}"
  puts " >> The enemy's choice is: #{@cchoice}"

  if    decrypted_states[@cchoice] == @choice
    puts " >> You lose hp..."
  elsif decrypted_states[@choice]  == @cchoice
    puts " >> Enemy loses hp..."
  elsif @cchoice == @choice
    puts " >> Stalemate mode..."
  else
    puts " >> Input is not understood..."
  end
end
