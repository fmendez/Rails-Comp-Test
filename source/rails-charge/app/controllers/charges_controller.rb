class ChargesController < ApplicationController
  def index
    criteria = "paid=? AND disputed=?"
    @failed_charges = CreditCardCharge.where(criteria,false,false)
    @disputed_charges = CreditCardCharge.where(disputed:true)
    @successful_charges = CreditCardCharge.where(criteria,true,false)
  end
end
