# movie-review SetUp

## Git cmds to clone and make changes

* git clone https://github.com/yogendra8singh/movie-review.git
* Navigate to movie-review
* Execute `git init`
* Execute `git status`
* Change / Add a file 
* Execute `git status` , you should see your changes
* Execute `git add .`
* Execute `git commit -m "NewFile\ChangeFile"`
* Execute `git push -u origin master`


## Build Docker image
* sudo docker build -t movie-rating .


## Run movie rating app
* sudo docker run -it movie-rating


### Output

	**Case 1** 
	Welcome to movie rating system! Please choose option add, update, display, exit
	add
	Enter the movie title
	ultron
	ultron title already present and  rating is 3

	**Case 2**
 	Welcome to movie rating system! Please choose option add, update, display, exit
	update
	Enter the movie title
	ultron
	Enter rating
	zyx
	Rating is not valid! Please enter numeric value for rating.
        
	**Case 3**
	Welcome to movie rating system! Please choose option add, update, display, exit
	update
	Enter the movie title
	ultron
	Enter rating
	4
	ultron movie title rating updated!

   	**Case 4**
	Welcome to movie rating system! Please choose option add, update, display, exit
	display
	Enter the movie title
	ultron
	ultron rating is 4

	**Case 5**
	Welcome to movie rating system! Please choose option add, update, display, exit
	add
	Enter the movie title
	endgame
	Enter rating
	4
	endgame movie title rating added


	**Case 6**
	Welcome to movie rating system! Please choose option add, update, display, exit
	display
	Enter the movie title
	endgame
	endgame movie title rating is 4

	**Case 7**
	Welcome to movie rating system! Please choose option add, update, display, exit
	like
	Option you have chosen is not supported!

	**Case 8**
	Welcome to movie rating system! Please choose option add, update, display, exit
	exit
	Thank you for visit. Hope you like the movie rating system.
