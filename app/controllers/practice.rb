get '/practice' do
  @guitars = Guitar.where(user_id: session[:user_id])
  p @guitars
  if session[:user_id]
    erb :index
  end
end

post '/practice' do
  p params
  @cur_sess = PracticeSession.create(user_id: session[:user_id],                                 guitar_id: params['guitar_style'])
  @id = @cur_sess.id
  redirect "/practice/#{@id}"
end

get '/practice/:id' do

end
