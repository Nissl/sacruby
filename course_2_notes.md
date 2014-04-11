***
Next week - intro to database design class - 4/17-18, 10-5 $100
Software development culture talk, Streamsend - large local Ruby employer

Amazon Web Services meetups being held here now - 4th Thursday of month
Automating development server - chef, puppet - probably the next talk

Tonight - object-oriented thinking, SQL database
Next time - build a UI, complicated forms, create API

ruby 2.1, rails 4.0 still
rails 4.1 update today!

Rails will wire out of box. If you don't tell it anything, sqlite.
Not for deployment & scaling.
-T turns off default testing so we can install Rspec

rails new contacts -d mysql -T 
rails generate rspec:install

mysql is borked - go to database.yml to fix

scaffold - generates all stuff besides model
rails g scaffold contact name:string 

class Contact < ActiveRecord::Base
end

rake -T to see functions

rake -T db
rake db:create:all

rails g model phone number:string contact:references

indexing: very important!

HW: generate a brand new Rails app - recreate this model
For me: screw around with MySQL, get it working. Why not work??
Get basic model in place, bring it with you. Oops, sort of did this already