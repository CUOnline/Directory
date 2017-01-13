require 'bundler/setup'
require 'wolf_core'

class DirectoryApp < WolfCore::App
  set :root, File.dirname(__FILE__)

  get '/' do
    slim :index, {:locals => { 'domain'=> request.env['HTTP_HOST'] }}
  end
end
