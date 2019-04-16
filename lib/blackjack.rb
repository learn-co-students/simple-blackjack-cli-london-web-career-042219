def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(cardtotal)
  puts "Your cards add up to #{cardtotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cardtotal)
  puts "Sorry, you hit #{cardtotal}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  cardtotal = card1 + card2
  display_card_total(cardtotal)
  return cardtotal
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == 's'
  elsif input == 'h' 
  newcard = deal_card
  number += newcard
else invalid_command
  number = prompt_user
end
  return number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  value = initial_round
  until value > 21 
  value = hit?(value)
  display_card_total(value)
  end 
end_game(value)
end
    
