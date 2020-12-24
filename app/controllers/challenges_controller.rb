class ChallengesController < ApplicationController
  before_action :authenticate_brand!

  def show
    @brand=current_brand
    @challenge=@brand.challenges.find(params[:id])

  end

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

  def edit
    @challenge = Challenge.find(params[:id])
  end

  def update
    @brand=current_brand
    @challenge=@brand.challenges.find(params[:id])

    if @challenge.update(challenge_params)
      redirect_to '/challenges'
    else
      render :edit
    end
  end

  def destroy
    @brand=current_brand
    @challenge = @brand.challenges.find(params[:id])
    @challenge.destroy
    redirect_to '/challenges'
  end
  

      private
      def challenge_params
        params.require(:challenge).permit(:title, :body,:prize,:expiry_date)
      end

end
