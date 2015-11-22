# get '/session-viewer' do
#   session.inspect
# end
get '/posts' do
  @posts= Post.all
  erb :'/posts/index'
end

get '/posts/new' do
  # if signed_in?
  #   @
  @post = Post.new(params[:post])
  erb :'/posts/new'
end

post '/posts' do
  if @post = Post.save(params[:post])
    redirect '/posts/show'
  else
    erb :'/posts'
  end
end

get '/posts/:id' do
  # if sign_in? == false
  #   redirect :"/users"
  # else
  @post = Post.find(params[:id])
  erb :'/posts/show'
end

get '/posts/:id/edit' do
  @post = Post.find(params[:id])
  erb :'/posts/edit'
end





#COULD PROBABLY PULL THE METHODS BELOW INTO ANOTHER SET OF HELPERS?




#  else
#    erb :'/posts/error_page'
#  end
# end



# post '/posts' do
#   @user = user_now
#   @new_post = @user.posts.create!(params[:posts])
#     redirect "/posts"
# end


# put '/posts/:id' do |id|
#   @post = Post.find(id)
#   @post.update_attributes(params[:post])
#   erb :'/posts/show'
# end


# delete '/posts/:id' do |id|
#   @post = Post.find(id)
#   @post.destroy
#  redirect "/posts"
# end





























































