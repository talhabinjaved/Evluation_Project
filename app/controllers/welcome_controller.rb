class WelcomeController < ApplicationController
  before_action :authenticate_brand!,    only: :brand

  before_action :authenticate_customer!, only: :customer

  def index

  end
  
  def customer
   
  end

  def brand

  end
  

end
