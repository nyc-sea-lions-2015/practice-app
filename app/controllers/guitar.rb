get '/guitars' do
  @guitars = Guitar.where(user_id: session[:user_id])

  erb :guitars
end

get '/guitar/new' do
  @guitars = Guitar.where(user_id: session[:user_id])
  erb :guitars
end

post '/guitar/new' do
  Guitar.create(user_id: session[:user_id], style: params['guitar_style'])
  redirect '/guitars'
end
