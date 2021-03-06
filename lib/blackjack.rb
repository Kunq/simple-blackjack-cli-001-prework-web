def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return(rand(1..11))
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   card_total = 0
   for i in (1..2) do
     x = deal_card
     #puts x
     card_total += x
   end
   display_card_total(card_total)
   return(card_total)
end


def hit?(current_card_total)
  prompt_user 
  command =  get_user_input
  if !(command == 'h' or command == 's')
    invalid_command
  elsif command == 'h'
    current_card_total += deal_card
    display_card_total(current_card_total)
  end 
  return current_card_total
end


def invalid_command
   puts "Please enter a valid command"
   prompt_user
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  current_total = initial_round
  current_total = hit?(current_total)
  until current_total > 21 do
     current_total = hit?(current_total)
     #current_total += x
  end
  end_game(current_total)
end
   #runner 
