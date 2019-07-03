def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
  input.chomp
end

def end_game(cardtotal)
  if cardtotal > 21
    puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
  end
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit? (num)
  prompt_user
  input = get_user_input
  if input == "h"
    num+=deal_card
  elsif input == "s"
    return num
  else
    invalid_command
    prompt_user
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21 do
    new_total = hit?(total)
    total = new_total
    display_card_total(total)
  end
  end_game(total)
end
