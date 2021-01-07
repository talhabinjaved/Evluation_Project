class RewardsController < ApplicationController
    before_action :authenticate_brand!
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






end
