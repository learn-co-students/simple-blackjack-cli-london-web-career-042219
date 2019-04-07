def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card()
  card2 = deal_card()
  display_card_total(card1 + card2)
  card1 + card2
end

def hit?(card_total)
  prompt_user()
  user_input = get_user_input()
  if(user_input == 'h')
    return card_total + deal_card
  end
  return card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  hand = initial_round()
  winning = true
  while winning
    hand = hit?(hand)
    display_card_total(hand)
    winning = hand < 21
  end
  end_game(hand)
end
    
