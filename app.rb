require 'sinatra'
require 'sinatra/reloader'
require 'haml'
get '/' do 
    "Hello w"
end

get '/saludo/:nombre/:apellido' do
    "hola #{params[:nombre]} #{params[:apellido]}" #interpolacion
end

get '/saludo_con_formato/:nombre' do
    @nombre = params[:nombre]
    erb :saludo
end

get '/haml/:nombre' do
    @nombre = params[:nombre]
    haml :nombre
end

