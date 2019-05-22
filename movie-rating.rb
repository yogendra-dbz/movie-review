#!/bin/ruby

movies={
    'avengers' => '2',
    'ultron' => '3'
}

$finish=1;
while $finish do
  puts "Welcome to movie rating system! Please choose option add, update, display, exit"
  choice=gets.chomp

  case choice
      when "add"
        puts "Enter the movie title"
        title= gets.chomp

        if movies[title]
           puts "#{title} movie title already present and  rating is #{movies[title]}"
           puts
           puts
        else
          puts "Enter rating"
          rating= gets.chomp
          
          movies[title] = rating
          puts "#{title} movie title rating added!"
          puts
          puts
        end 
    
      when "update"
    
        puts "Enter the movie title"
        title= gets.chomp 
        
        if movies[title]
          puts "Enter rating"
          rating= gets.chomp
          
          movies[title] = rating
          puts "#{title} movie title rating updated!"
          puts
          puts
        else
          puts "No rating has been added yet!  Please add the #{title} rating first."
          puts
          puts
        end
    
      when "display"
    
        puts "Enter the movie title"
        title= gets.chomp
        
        if movies[title]
          puts "#{title} rating is #{movies[title]}."
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
        puts "Option you have chosen is not supported!"
        puts
        puts
  end 
end           

