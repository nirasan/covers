class Book < ActiveRecord::Base
  has_and_belongs_to_many :browse_nodes
end
