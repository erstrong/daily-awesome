## The Daily Awesome

The Daily Awesome is an open source journaling app with daily writing prompts. 

If there is time, it will have a discussion forum for sharing and discussing each prompt.

#### Live Link

Coming soon!

#### Test Credentials

Coming Soon!

#### User Stories
1. As a user I want to create an account <<
2. As a user I want to be able to log in <<
3.  Create a Moderator Role and a general users role
4. As a user I want to be able to write a new journal entry each day
5. As a user I want to be able to add media to my entries
6. As a user I want to be able to read and edit my past entries
7. As a user I want to be able to make an entry publicly viewable on my profile
8. As a moderator I want to be able to add writing prompts (topics)
9. As a moderator I want to be able to categorize the writing prompts (topics) to set how the form appears to the users (eg includes image uploader)
10. As a moderator I want to be able to schedule the writing prompts (topics)
11. As a moderator I want to be able to view the schedule of past and upcoming writing prompts
12. As a user I want to be able to add tags to my entries

Extras Credit:
1. As a user I want to create a profile with a picture of myself 

#### External code
Bootstrap

Rails 4.2

Gems: devise, will_paginate, pundit


Create Roles 
Create your Add Topic and your View Topic, then your Edit Topic
Create your entry Form - (no image) (body only form) - then your view and your Edit
Add the public/not-public flag on your entries
Then Create your Policy for Topic
Then create your Policy for Entry
Then Add your image options to your Topic 
Then Add image to your entry form - display based on your topic image options flag
Then add your display_date to your Topic 
Adjust your view - using a scope on the topic model
Start thinking about how tags work - write your reqs from tagging
Add your Admin section
Add your view for Schedulded Topics  -  Todays Topic - upcoming Topics (#_ at a time), Add link to view all Past Topics.  
Move your Topic form to the Admin Section - make it ajaxable
Add image to user
