class TricksController < ApplicationController
    before_action :authenticate_customer!

    # def show
    #   @customer=current_customer
    #   @challenge=@brand.challenges.find(params[:id])
  
    # end
  
    def index
      @challenges=Challenge.all.order("created_at")
    
    end
    
    def new
     @challenge=Challenge.find(params[:id])
     @trick=Trick.find_or_initialize_by(challenge_id: params[:id], customer_id: current_customer.id)
    end
  
    def create
      @customer=current_customer
      @trick=@customer.tricks.new(trick_params)
      @challenge=Challenge.find(params[:id])
      @trick.challenge_id=@challenge.id
      if @trick.save
        redirect_to '/tricks'
      else
        render :new
      end
    end
  
  
    def update
      @customer=current_customer
      @trick=@customer.tricks.find(params[:id])
     
      if @trick.update(trick_params)
        redirect_to '/tricks'
      else
        render :new
      end
    end
  
    
  
        private
        def trick_params
          params.require(:trick).permit( :body,:image,:video)
        end
  
  end