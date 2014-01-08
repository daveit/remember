class Committee < ActiveRecord::Base
  belongs_to :village
  belongs_to :com_type
end
