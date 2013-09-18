

get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/secret_page' do
  erb :secret_page  
end 

post '/login' do
  @user = User.find_by_email(params[:email])
  if @user.id == User.authenticate(params[:email],params[:password])
    session[:user_id] = @user.id
    redirect '/secret_page'
  else 
    # @errors = "You aren't real."
    redirect "/"
  end 
end 



####GET###### 
# Logging in
# Logging out
# Viewing the secret page
####POST###### 


# Creating an account
# Logging in (after user inputs info)

# Redirecting a user back to the "log in" screen if they try to view the secret page without being logged in
