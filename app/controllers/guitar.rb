get '/guitars' do
  @guitars = Guitar.where(user_id: session[:user_id])

  erb :guitars
end

get '/guitar/new' do
  @guitars = Guitar.where(user_id: session[:user_id])
  erb :guitars
end

post '/guitar/new' do
  # What happens if the create fails?
  #
  # Guard against failure!
  #
  # guitar = Guitar.new(user_id: session[:user_id], style: params['guitar_style'])
  # if guitar.save
  #   redirect '/guitars'
  # else
  #   [ 403, 'Couldnt create guitar' ]
  # end
  Guitar.create(user_id: session[:user_id], style: params['guitar_style'])
  redirect '/guitars'
end
