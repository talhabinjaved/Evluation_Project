class ChallengesController < ApplicationController
  before_action :authenticate_brand!

  def index
    @brand=current_brand
    @challenges=@brand.challenges.all
  end
  
  def new
    @brand=current_brand
    @challenge=@brand.challenges.new
  end

  def create
    @brand=current_brand
    @challenge=@brand.challenges.new(challenge_params)
    if @challenge.save
      redirect_to '/challenges'
    else
      render :new
    end
  end

      private
      def challenge_params
        params.require(:challenge).permit(:title, :body,:expiry_date)
      end

end
