def welcome
    puts "Welcome to the Blackjack Table"
end

def deal_card
  card = (1..11).to_a.sample
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    sum += deal_card
  end

  display_card_total(sum)
  sum
end

def hit?(current_total)
  new_total = current_total
  prompt_user
  input = get_user_input
  if input == 'h'
    new_total = current_total + deal_card
  elsif input == 's'
    new_total = current_total
  else
    invalid_command
    prompt_user
  end
  new_total
end

def invalid_command
   puts "Please enter a valid command"
end

def runner
  welcome
  #initial_round WAS THIS IT?! YES. You cannot set a varible equal to a methods
  # return without calling that method at the same time!
  card_sum = initial_round
  until card_sum > 21
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
end_game(card_sum)

end
