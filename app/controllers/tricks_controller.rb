class TricksController < ApplicationController
    before_action :authenticate_customer!

    # def show
    #   @customer=current_customer
    #   @challenge=@brand.challenges.find(params[:id])
  
    # end
  
    # def index
    #   @brand=current_brand
    #   @challenges=@brand.challenges.all
    # end
    
    def new
     @challenge=Challenge.find(params[:id])
     @trick=Trick.new
    end
  
    def create
      @customer=current_customer
      @trick=@customer.tricks.new(trick_params)
      @challenge=Challenge.find(params[:id])
      @trick.challenge_id=@challenge.id
      if @trick.save
        redirect_to '/welcome/customer'
      else
        render :new
      end
    end
  
    # def edit
    #   @challenge = Challenge.find(params[:id])
    # end
  
    # def update
    #   @brand=current_brand
    #   @challenge=@brand.challenges.find(params[:id])
  
    #   if @challenge.update(challenge_params)
    #     redirect_to '/challenges'
    #   else
    #     render :edit
    #   end
    # end
  
    # def destroy
    #   @brand=current_brand
    #   @challenge = @brand.challenges.find(params[:id])
    #   @challenge.destroy
    #   redirect_to '/challenges'
    # end
    
  
        private
        def trick_params
          params.require(:trick).permit( :body,:image,:video)
        end
  
  end