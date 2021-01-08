class RewardsController < ApplicationController
    before_action :authenticate_brand!, only: [:users_tricks,:give_rewards]
    before_action :authenticate_customer!, only: [:customers_rewards]


    def users_tricks
        @brand=current_brand
        @challenges=Challenge.where('expiry_date < ?', DateTime.now ).where(is_complete: false) 
    
        @tricks=@brand.tricks.where(challenge_id:@challenges.ids) 
      end

      def give_rewards
        Reward.create!(challenge_id: params['challenge_id'],trick_id: params['trick_id'])
        @challenge=Challenge.find( params['challenge_id'])
        @challenge.is_complete=true
        @challenge.save
        redirect_to root_path
      end

      def customers_rewards
          @customer=current_customer
          @tricks=@customer.tricks.all
          @rewards=Reward.where(trick_id: @tricks.ids)
      end






end
