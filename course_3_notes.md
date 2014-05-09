Next week - scale up to a cluster on AWS - demo
6:30 social with pizza and beverages, demo at 7, only 1 hour
Make sure to RSVP for a rough count

Next month - help with tricky Ruby problems, do a challenge 
No formal agenda

This is more of a final product, will be copying and pasting, so probably can't keep up.
Just going to take notes this time.

$rails g scaffold person name:string
$rails g scaffold phone number:string person:references
$rails g scaffold location_type name:string
$rails g scaffold address street city state zip location_type:references person:references
note that if you don't put a type, string is assumed

Add an address, phone for a person
Rather than just entering them separately
No validations

Time to build UI
What is Rails doing behind the scenes
Content framing element - different content regions inside the page - header, body, left column, right column, footer

Might have reusable elements
Common CSS and JS appear on every page

def copyright(company = nil)
	('<section class="copyright">' + 
	# Do it this way so if there's no company you don't get double commas
	["Copyright #{Time.zone.now.year}", company, "All Rights Reserved"].compact.join(", ") + 
	'</section>').html_safe
	# section tags are specialized html5, glorified divs pretty much
	# need html_safe or it will be escaped to protect against injection
end

bootstrap goes into assets (could also go into gems, vendors)
manually moved in css, js, fonts
Rails magic finds all of that, compresses, etc.

our manifest file:
application.css

for tonight
= require bootstrap - in both css and js

<%= content_for :navbar do %>
	(stuff goes in here)
<% end %>

=yield navbar
Everything not named goes into default space - yield

Not really a convention for where to put partials - for shared ones - if just for one controller, goes in controllers directory

Make a new directory shared/_navbar.html.erb
Extract the code from index to this file

Now tell Rails to insert
Personal preference - call into page

//weird thing there, no underscore when calling partials
<%= render "shared/navbar" %>

make a custom.css.scss

.main {
	padding-top: 40px;

}

manifest file:
=require custom

there, pushed it down a little
note that the navbar share line can be inserted anywhere

hitting multiple models in a form
f just references form builder object

<% field_set_tag "Phones" do %>
	<% f.fields_for :phones do |phone| %>
		<%= phone.label :number %><br>
		<%= phone.text_field %> 

		// if the phone exists, create a checkbox that allows it to be deleted
		<% if phone.object.persisted? %>
			<div class="field">
				Delete: <%= phone.check_box :_destroy %>
			</div>
		<% end %>	
	<% end %>	
<% end %>

Rinse and repeate for addresses

<% address.collection_select :location_type_id, LocationType.all, :id, :name, include_blank: true %>

oops, error! can't find phone object
@person = Person.new - *doesn't* create associations

def new
	@person = Person.new
	2.times { @person.phones.build }
	2.times { @person.addresses.build }
end

def edit
	# a bit hacky, but this is how it's done
  (2 - @person.phones.size).times { @person.phones.build }
  (2 - @person.addresses.size).times { @person.addresses.build }
end

class Person
	# source of lots of difficult to parse errors, oh boy!
 	accepts_nested_attributes_for :addresses, allow_destroy: true, reject_if: :all_blank
 	accepts_nested_attributes_for :phones, allow_destroy: true, reject_if: :all_blank

permitted paramters
	need to spell out exactly what can get through

project on github
chaupt
sacruby/formfun

next time - working on a project, digging into stuff? one on one time! then other technical talks after that