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

  # This is a dynamic route
  get "/goodbye/:name" do 
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end 

  # This is a dynamic route
  # values in params ALWAYS come in as strings, return value
  # for the route should also be a string( use .to_i and .to_s)
  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

end