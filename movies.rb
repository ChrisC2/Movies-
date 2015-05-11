movies = {
    Wedding_Crashers: 10, 
    Terminator: 7,
    Internship: 9,
    Transformers: 7,
    Taken: 8,
    Furious: 9
}
puts "What would you like to do?"
puts "You can'add' a new movie & your rating"
puts "You can 'update' a movie with a new rating"
puts "You can 'remove' a movie from your watched list"
puts "You can 'display' all movie ratings"

choice = gets.chomp.downcase
case choice
    when 'add'
    puts "What movie would you like to add?"
    title = gets.chomp.downcase 
    if movies[title.to_sym].nil?
    puts "What would you rate this movie?"
    rating = gets.chomp
    movies[title.to_sym.capitalize!] = rating.to_i
    movies = puts "#{title} has been added with a rating of #{rating}."
else
    puts "You have already added that movie!"
end
when 'update'
puts "What movie would you like to update?"
title = gets.chomp.downcase
if movies[title.to_sym].nil?
    puts "That movie doesn't currently exist! Please go back and 'add' the movie"
else
    puts "Whats your new rating from 1-10?"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts " #{title} has been updated with a new rating of #{rating}"
end
when 'display'
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when 'delete'
    puts "What movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
    puts "Movie not found!"
    else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted!"
end
else
    puts "Sorry what was that?"
end