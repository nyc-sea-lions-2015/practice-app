get '/guitars' do
  @guitars = Guitar.where(user_id: session[:user_id])

  erb :guitars
end
