require 'rspec'

# when putting together a script to populate a database, I generally don't do TDD, as, within cases like this
# i used trail an error to throw up how I the db architecture should work, how to set up relationships, what works and 
# what is in the json script, because of this, and because I am running ate on time (I have to get a train in an hour),
# this test spec is pretty light!

# it goes without saying that if this was a script to a production db, there would be a lot more testing! 

# just to give an idea of what how I would test, here is some psudo code


# happy and sad tests for each of the following
# it finds file

# given a typical row it
	# ensures that it has data
	# ensures that it has no XSS
	# find or creates a city
	# find or createss an artist
	# find or creates video
	# find or creates song

	# ensure the correct relationships exist between city, artist, video and song