enable :sessions 

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/login' do
  # validate user 
  # if correct user, set session id = user_id
  # if not, redirect to '/'
  erb :login
end 

####GET###### 
# Logging in
# Logging out
# Viewing the secret page
####POST###### 


# Creating an account
# Logging in (after user inputs info)

# Redirecting a user back to the "log in" screen if they try to view the secret page without being logged in
