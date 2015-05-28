require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
:adapter => 'sqlite3',
:database => 'dev.db'
)

ActiveRecord::Base.default_timezone=:local

class Produit < ActiveRecord::Base
end


class Commande < ActiveRecord::Base
end