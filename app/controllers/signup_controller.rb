class SignupController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render :create, status: :unprocessable_entity
        else
            render :new, status: :unprocessable_entity
        end
    end

    def user_params
        params.require(:user).permit(:name, :name_kana, :email, :password, :phone_number, :zip_code, :address)
    end

end
