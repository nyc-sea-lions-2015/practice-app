get '/practice' do
  @guitars = Guitar.where(user_id: session[:user_id])
  if session[:user_id]
    erb :index
  end
end

post '/practice' do
  @cur_sess = PracticeSession.create(user_id: session[:user_id],                                 guitar_id: params['guitar_style'])

  redirect "/practice/#{@cur_sess.id}"
end

put '/practice/:id' do
  @cur_sess = PracticeSession.find(params[:id])
  @cur_sess.touch
  @cur_sess.duration= ((@cur_sess.updated_at - @cur_sess.created_at) / 60).to_i
  @cur_sess.save!
  redirect "/practice/#{@cur_sess.id}"
end

get '/practice/:id' do
  @guitars = Guitar.where(user_id: session[:user_id])
  @cur_sess = PracticeSession.find(params[:id])
  erb :timer
end
