require 'sinatra'

#
# A simple account registration service.
#
# It keeps users in-memory. In the real world, this would be written
# into a database.
#

require 'json'
require_relative './models'

Users.init

# 
# Returns all users from database
#
get '/users' do
  Users.list_all.to_json
end

#
# Adds a new user to database
#
post '/users' do
  user = JSON.parse(request.body.read)
  Users.add(user['name'])
  Users.list_all.to_json
end
