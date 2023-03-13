# s = [
#     ["ham", "swiss"], 
#     ["turkey", "cheddar"], 
#     ["roast beef", "gruyere"]
# ]



# Iterating over hashes
# When iterating over hashes, we need two place holder variables to represent
# key / value pair.

secret_identities = {
    "The Batman" => "Bruce Wayne",
    "Superman" => "Clark Kent",
    "Wonder Woman" => "Diana Prince",
    "Freakazoid" => "Dexter Douglas"
  }
    
  secret_identities.each do |name, alter_ego|
    puts "#{name}: #{alter_ego}"
    end
  