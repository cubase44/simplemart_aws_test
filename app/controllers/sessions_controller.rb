class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            logger.debug(session[:user_id])
            logger.debug('ログイン成功')
            redirect_to root_path
        else
            flash.now[:danger] = 'メールアドレスまたはパスワードが違います'
          render 'new', status: :unprocessable_entity
        end
    end

    def destroy
        log_out if logged_in?
        redirect_to root_url
    end
end
