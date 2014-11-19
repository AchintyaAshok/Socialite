# SocialiteV2 -- Software Engineering

## Instructions
1. Download the repository using Git pull (look up how to do this on the github wiki)
2. Branch it so that you don't commit any changes to master right now: (again look up on wiki)
3. Attempt to commit to your branch
4. Git push to your branch

- You should be able to see your changes on your branch on the repo online
- Front End People: Make changes to your branch then merge changes with fe_master
- Back End People: Make changes to your branch then merge changes with be_master

- once stable builds made for fe_master and be_master, we will merge both into sub_master and then into master

## Usage
1. Run the rails server by running the command: "rails s" or "rails server" after navigating to the application folder.

### Available Routes
- Check out the routes.rb file to understand what currently available routes are for the application

#### Routes:
	Events
	- {server_root}/api/events (look up all available events)
	- {server_root}/api/events/:id (search for an event by providing its id number)
	- {server_root}/api/events/search/:search_string (search for an event using some keywords)
	Users
	- {server_root}/api/users -- Get all the Users in the Application
	- {server_root}/api/users/:id -- Get a User by his/her id
	- {server_root}/api/users/search/:search_string -- Get a User by searching by username
	- {server_root}/api/users/:id/events -- Get all the events the user is following/going to
	- {server_root}/api/users/:id/events/following -- All the events being followed for user
	- {server_root}/api/users/:id/events/goingto -- All the events user is going to 