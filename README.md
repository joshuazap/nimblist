# Nimblist

Nimblist aims to keep your to-do lists manageable by automatically deleting to-do items that have not been completed after seven days. The hypothesis is that if the to-do item is not important enough to be completed in seven days, it doesn't belong on your nimble to-do list. The application includes:
- a responsive design
- user account creation, sign in, and sign out
- email confirmations and integration through SendGrid

Check out a live demo of this app at https://nimblist.herokuapp.com/

## Other details

* Ruby version 2.3.0
* Rails version 4.2.5

* Configuration

````bash
git clone https://github.com/joshuazap/nimblist.git
bundle install --without production
````

* Database creation

````bash
rake db:create
````

* How to run the test suite

````bash
rspec spec
````

* Deployment instructions

This app is deployed as a live demo at https://nimblist.herokuapp.com/

If you are interested in learning how to deploy Ruby on Rails apps on Heroku or you have questions, feel free to contact me!
