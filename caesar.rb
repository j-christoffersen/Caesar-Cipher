require 'sinatra'
require 'sinatra/reloader'
require './caesar_cipher.rb'

get '/' do
    unless params['input'] == nil
        output = caesar_cipher(params['input'], params['shift'].to_i)
    end
    erb :index, :locals => {output: output}
end
