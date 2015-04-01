get '/' do
  erb :login
end

post '/' do
  @cur_user = User.find_by(name: params[:name])
  if @cur_user && @cur_user.authenticate(params[:password])
    session[:user_id] = @cur_user.id
    redirect '/practice'
  else
    [403, 'not logged in']
  end
end
