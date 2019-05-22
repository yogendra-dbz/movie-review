#!/bin/ruby

movies={
    'avengers' => '2',
    'ultron' => '3'
}

def calculate_rating(rating)
  msg=""
  if rating.to_i >= 5 then
    msg="Excellent"
  elsif rating.to_i < 5 and rating.to_i > 3  then
    msg="Good"
  elsif rating.to_i == 3 then
    msg="Average"
  elsif rating.to_i > 3 then
    msg="Bad"
  else
    msg="Bad"     
  end
  return msg
end

def is_rating_valid?(rating)
  if rating =~ /^-?[0-9]+$/
    return true
  else 
    return false  
  end
end      

$finish=1;
while $finish do
  puts "Welcome to movie rating system! Please choose option add, update, display, exit"
  choice=gets.chomp

  case choice
      when "add"
        puts "Enter the movie title"
        title= gets.chomp

        if movies[title]
           message=calculate_rating(movies[title])
           puts "#{title} movie title already present and rating is #{message}."
           puts
           puts
        else
          puts "Enter rating"
          rating= gets.chomp
          
          if is_rating_valid?(rating)
            movies[title] = rating
            puts "#{title} movie title rating added."
            puts
            puts
          else
            puts "Rating is not valid! Please enter numeric value for rating."
            puts
            puts  
          end  
        end 
    
      when "update"
    
        puts "Enter the movie title"
        title= gets.chomp 
        
        if movies[title]
          puts "Enter rating"
          rating= gets.chomp
          
          if is_rating_valid?(rating)
            movies[title] = rating
            puts "#{title} movie title rating updated."
            puts
            puts
          else
            puts "Rating is not valid! Please enter numeric value for rating." 
            puts
            puts 
          end   
        else
          puts "No rating has been added yet!  Please add the #{title} rating first."
          puts
          puts
        end
    
      when "display"
    
        puts "Enter the movie title"
        title= gets.chomp
        
        if movies[title]
          message=calculate_rating(movies[title])
          puts "#{title} movie rating is #{message}."
          puts
          puts
        else
          puts "No rating has been added yet!  Please add the rating first."
          puts
          puts
        end

      when "exit"
        puts
        puts "Thank you for visit. Hope you like the movie rating system."
        puts
        exit(0);
      else 
        puts "Option you have chosen is not supported."
        puts
        puts
  end 
end           

