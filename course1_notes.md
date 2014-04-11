Tonight, introduction/tour
Go deeper into different sections, next 3 months

Next class: how to think about & organize info, plan database
Get model to sophisticated reprsentation of problems

Class 3: other third-party components to accelerate work

Negatives?
Dev with RoR - not most highly performant
Ruby ecosystem - most comfortable in Linux/Unix, harder in Windows

No special IDE needed

If all new, just absorb tonight
Hit pause around 8 or a little later

$gem install rails --no-ri --no-rdoc
# install no docs
#

$rails --help

# build a stub!
$ rails new sacruby demo

Gemfile - all dependencies, versions gathered in one place
bundler, library management tool, make sure the right stuff is installed

Main code in directory app

MVC concept
assets - all of the non-ruby stuff goes here! CSS, JS, pictures
controllers - 
helpers - extract code snippetes

Public directory - if apache/nginx dreamweaver - used to putting files into root
(bleah, tell me about it)
no special protections or security, totally visible

Modern practice is to put most stuff in the assets directory, not public

/log is going to become real interesting in a few minutes
/lib not going to be used tonight, other code goes here - not part of core app or in gem
(e.g. shared code from another project)
/config has a lot of setup stuff
"convention over configuration" - Rails has a "right way" to build a web app. If you follow the process, a lot of things are easy to do. Name them the right thing, put the in the right place, they'll just *work*
reaction to Java - lots of time doing settings, config files
/db - this is where stuff will start to appear
/vendor - skipped
/test - not going into this tonight - by default starts with code testing tools


findmybike site map
build out a couple easy boxes tonight

rails generate
you can write all of your code by hand if you want
but programmers are fundamentally lazy, don't do more than they have to
$rails generate
$rails generate scaffold
# lots of options printed out
# creates an entire resource, from model an migration to controller and views
$rails generate scaffold bike name latitude:float longitude:float
# data item in its singular form

looking at 3000/bikes
controller, view
embedded ruby executed inside view, dynamic markup
automatically returns the results in json format - JS program with backbone/ember - can natively consume, use rails backend for API. XML and proprietary formats generated with own code
(form partials)
layout/application.html.erb
content management system - thinks of a view with an outer container holding the page
uses = yield to put in content into layout page that contains
headers/footers shared across site


April class - about a half dozen companies presenting, some are hiring
Homework - get Rails setup, if you're stuck, ask for help on the messageboard
Reach out to either Chris
Think about what you need to represent - come up with a schematic for the site
Next time, databases & testing
Actual lab challenge next time as well

Default way of thinking about things is RESTful - resource-oriented way of thinking about and addressing information

(next week - coding challenges, live pairing - how do you prepare for interview questions)
next month - more of this, meet the Ruby-using companies