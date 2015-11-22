get '/login' do
  erb :'/users/login'
end

post '/signup' do
  @user = User.new(username: params[:user][:username])
  @user.password = params[:user][:password]
  if @user.save!
    session[:user_id] = @user_id
    redirect '/posts'
  else
    erb :'error_page'
  end
end

get '/signup' do
  erb :'/users/signup'
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/posts"
  else
    erb :'error_page'
  end
end


