require 'tiny_tds'
require 'active_record'
require 'logger'

ActiveRecord::Base.logger = Logger.new('debug.log')
configuration = YAML::load(IO.read('database.yml'))
ActiveRecord::Base.establish_connection(configuration['development'])

class Product < ActiveRecord::Base
 p = Product.new
 p.name = "New book"
 puts p.name # "New book"
 p.save
end
