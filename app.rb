require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
    # remember to include @ 
  end 

  get "/multiply/:number1/:number2" do 
    multiplied = params[:number1].to_i * params[:number2].to_i
    # remember to convert to appropriate data type as they are always returned as strings
    "#{multiplied}"
  end


end