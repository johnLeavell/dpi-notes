options = ["rock", "paper", "scissors"]

p "Please select: rock, paper, or scissors"

selection = gets.chomp.downcase

case selection
when "rock"
p "You played rock!"
when "paper"
p "You played paper"
when "scissors"
p "You played scissors"
else 
p "Please select: rock, paper, or scissors"
end