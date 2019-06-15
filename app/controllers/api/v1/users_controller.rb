module Api
  module V1
    class UsersController < ApplicationController
      
      def index
        @users = User.order('created_at DESC')
        render json: @users
      end

    end
  end
end