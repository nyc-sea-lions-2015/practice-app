get '/practice' do
  # Let think of another way of doing this...
  #
  # It might sense to have a "current_user" method which returns the logged in user...
  #
  # def current_user
  #   if session[:user_id]
  #     User.find(session[:user_id])
  #   end
  # end

  # I think that this code is a bit more descriptive about what the method is actually accomplishing
  if current_user
    @guitars = current_user.guitars
    erb :index
  end

  @guitars = Guitar.where(user_id: session[:user_id])
  if session[:user_id]
    erb :index
  end
end

post '/practice' do
  # So here we could use: (this is a bit more descriptive of the intent of the method)
  @cur_sess = current_user.practice_sessions.build(guitar_id: params['guitar_style'])
  #@cur_sess = PracticeSession.create(user_id: session[:user_id],
  #                                   guitar_id: params['guitar_style'])

  redirect "/practice/#{@cur_sess.id}"
end

put '/practice/:id' do
  @cur_sess = PracticeSession.find(params[:id])
  @cur_sess.set_duration! # Let the model do the work
  redirect "/practice/#{@cur_sess.id}"
end

get '/practice/:id' do
  # Again here - use your current_user method to find the guitars:
  @guitars = Guitar.where(user_id: session[:user_id])
  @cur_sess = PracticeSession.find(params[:id])
  erb :timer
end


def current_user
  if session[:user_id]
    User.find(session[:user_id])
  end
end
