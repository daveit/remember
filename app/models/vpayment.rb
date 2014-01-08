class Vpayment < ActiveRecord::Base
  belongs_to :MeansPayment
  belongs_to :Village
  after_save :do_update_village_date

  private
    def do_update_village_date
    	#fdate = self.financial_to
      self.Village.financial_to = self.financial_to
      # Village.update_attributes(financial_to => self.financial_to)      
      # self.update_attributes(:rating => rating)
      self.Village.save
    end  

end
