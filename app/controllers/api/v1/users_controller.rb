module Api
  module V1
    class UsersController < ApplicationController
      
      def index
        @users = User.order('created_at DESC')
        render json: @users
      end

      def created
        @user = User.new(user_params)

        if @user.save
          render json: { status: 'SUCCESS', message: 'User saved', data: :@user}, status: :ok
        else
          render json: {status: 'ERROR', message:'Articles not saved', data:article.erros},status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.permit(:username, :email)
      end

    end
  end
end