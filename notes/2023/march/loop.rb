loop do
    print "Do you want to continue? (y/n)"
    answer = gets.chomp.downcase

    if answer == "n"
        break
    end
end

i = 20

# loop do
#     i -= 1
#     print "#{i}"
#     break if i <= 0
# end
