require './config/environment'
require 'sinatra'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
use Rack::MethodOverride

use GenresController
use ArtistsController
use SongsController
run ApplicationController
