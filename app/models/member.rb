class Member < ActiveRecord::Base
  belongs_to :category
  belongs_to :suburb
  belongs_to :member_village
end
