require 'wizard/have_steps'

module Wizard
end

if defined?(DataMapper::Model)
  DataMapper::Model.append_inclusions( Wizard::Model )
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.send( :include, Wizard::Model )
end

if defined?(ActiveAttr::Model)
  ActiveAttr::Model.send( :include, Wizard::Model )
end
