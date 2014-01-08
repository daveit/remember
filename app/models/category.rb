class Category < ActiveRecord::Base
  has_many :members
end
