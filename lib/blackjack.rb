def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end


def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  if card_total >= 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
  # code #initial_round here
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if get_user_input == 'h'
    card_total += deal_card
    p card_total
  elsif get_user_input == "s"
    p card_total
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  # code invalid_command here
  while prompt_user != ["h", "s"]
    puts "Please enter a valid command"
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
