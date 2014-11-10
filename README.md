# SocialiteV2 -- Software Engineering

## Instructions
1. Download the repository using Git pull (look up how to do this on the github wiki)
2. Branch it so that you don't commit any changes to master right now: (again look up on wiki)
3. Attempt to commit to your branch
4. Git push to your branch

- You should be able to see your changes on your branch on the repo online

## Usage
1. Run the rails server by running the command: "rails s" or "rails server" after navigating to the application folder.
### Available Routes
- Check out the routes.rb file to understand what currently available routes are for the application
- When you navigate to the server it will open up the index template for the application_navigator controller
- Other routes to check out include:
	- {server_root}/events (look up all available events)
	- {server_root}/events/:id (search for an event by providing its id number)
	- {server_root}/events/search/:search_string (search for an event using some keywords)