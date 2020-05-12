# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.5.1p57
* System dependencies

* Configuration

* Database creation
locally : rails db:create
remotly : heroku run rails db:create
* Database initialization
locally : rails db:migrate
remotly : heroku run rails db:migrate
* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
to locally deploy app run : 
git clone https://github.com/matthieuBA/my_new_event_brite_like_app.git
cd my_new_event_brite_like_app
rails db:create
rails db:migrate
rails db:seed
rails s -b 0.0.0.0
open a browser and go to localhost:3000



* To view the demo go to :
https://my-new-event-brite-like-app.herokuapp.com/
