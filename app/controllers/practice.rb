get '/practice' do
  @guitars = Guitar.where(user_id: session[:user_id])
  if session[:user_id]
    erb :index
  end
end

post '/practice' do
  @cur_sess = PracticeSession.create(user_id: session[:user_id],                                 guitar_id: params['guitar_style'])
  @id = @cur_sess.id
  redirect "/practice/#{@id}"
end

get '/practice/:id' do
  @guitars = Guitar.where(user_id: session[:user_id])
  erb :timer
end

put '/practice/:id' do
  @cur_sess = PracticeSession.find(params[:id])
  @cur_sess.save!
end
