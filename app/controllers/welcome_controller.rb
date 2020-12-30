class WelcomeController < ApplicationController
  before_action :authenticate_brand!,    only: :index

  before_action :authenticate_customer!, only: :customer

  def index

  end
  
  def customer
    @challenges=Challenge.all
    
  end
  

end
