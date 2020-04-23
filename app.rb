require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @text = PigLatinizer.new(params[:user_phrase])
    "#{@text.piglatinize}"
  end

end
