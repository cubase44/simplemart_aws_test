class SignupController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to root_path, notice: "アカウトを作成しました。"
        else
            render :new
        end
    end

    def user_params
        params.require(:user).permit(:name, :name_kana, :email, :password, :phone_number, :zip_code, :address)
    end

end
