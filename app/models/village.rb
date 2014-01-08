class Village < ActiveRecord::Base
  belongs_to :suburb
  has_many :committees
  has_and_belongs_to_many :vcats
end
