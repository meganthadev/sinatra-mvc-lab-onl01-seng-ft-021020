require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text = PigLatinizer.new
    @piglatin = text.to_pig_latin(params[:user_phrase])
    erb :piglatinize
  end
end