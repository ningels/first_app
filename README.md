# Iron Yard Assignment - Your First Web App
Let's use Sinatra to sing a little ditty

## Assignment Description
Learning objectives

Get a Sinatra app up and running
Write a few routes
Details

Deliverables
A Github repository.
A README.
A completed test suite.
A PR from your fork of this repository containing the above: https://github.com/tiy-indy-bee-ror-jan17/first_app
Requirements

##EXPLORER MODE

A sinatra app with three endpoints (all just rendering text):
  - Index: GET "/", returns a welcome message
  - Show: GET "/billy", returns a specializaed welcome message for whatever name is passed to it as a param
  - Lorem: GET "/lorem/standard", returns lorem ipsum of the type requested
  - Complete the test suite to test the lorem endpoint.

##Adventure mode
Rather than hard-coding the lipsums, create a database table to hold them in sqlite3 and create an ActiveRecord model to represent them.
Use a migrations file for the above.

------------------------------------------------------------------------------
#Explanation of executable files:
1)  first_app.rb is the file that is run to initiate the Sinatra web interface.
2)  test.rb runs the test on the explorer mode
3)  /models/create_db.rb drops the database and recreates it initializing it with 3 ipsums
    it does this using the migration.rb
#Change Log
2017-02-22 - trying to resubmit after creating a branch
