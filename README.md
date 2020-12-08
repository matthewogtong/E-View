# README

E - View - A review web app for Electric Vehicles

To see the website:

1. Git clone the repo
2. Run bundle install
3. Run rake:db:migrate
4. Run rake:db:seed
5. Run rails s to get the server running
6. In your browser, go to the link provided to you by the rails server



E-View is an application for anyone who is interested in purchasing an electric vehicle and seeing what other users have to say about it. Using a ruby on rails framework, the application has a sign in function that is both secure, and easy to use. Once logged in a user should be able to do the following:


1. Users will be routed to the home page when they enter localhost:3000/
2. Users should be prompted to create an account to navigate the app
3. Once an account is created, Users can see all the top Electric Vehicles
4. A user upon creating an account has a secure password (courtesy of the bcrypt gem)
5. Users can make a review and rate a certain vehicle
6. Users can like other user's reviews if they found it helpful
7. Users can earn points/badges if other users find their post helpful and can level up
8. A user has the ability to Edit/Delete their account