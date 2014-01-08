class Mpayment < ActiveRecord::Base
  belongs_to :MeansPayment
  belongs_to :Member

  after_save :do_update_member_date

  private
    def do_update_member_date
      self.Member.financial_to = self.financial_to
      self.Member.save
    end  

end
