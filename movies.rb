movies = Hash.new
puts "what is your choice?"
choice = gets.chomp
case choice
when "add"
puts "movie please"
title = gets.chomp
if movies[title] == nil
    
    puts "rating please"
    rating = gets.chomp
    movies[title.to_sym]=rating.to_i
else 
    puts "movie already exists"
end
when "update"
puts "movie please"
title = gets.chomp
if movies[title] == nil
    puts "error!"
else
    puts "rating?"
    rating = gets.chomp
    movies[title] = rating
end
when "display"
movies.each_pair do |movie, rating|
    puts "#{movie}: #{rating}"
end
when "delete"
puts "title"
title = gets.chomp
if movies[title] == nil
    puts "error!"
else
    movies.delete[title]
end

end
