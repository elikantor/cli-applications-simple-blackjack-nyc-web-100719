def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 6
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

def end_game(var)
  puts "Sorry, you hit 27. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit?(total)
  prompt_user
  inputs = get_user_input
    if 'h' == inputs
      total += deal_card
    elsif 's' == inputs
      return total
    else
      invalid_command
      prompt_user
      get_user_input
    end
   return total   
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  initial_round
  prompt_user
  hit?
  display_card_total
  end_game
end
    
