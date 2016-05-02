class MessagepostsController < ApplicationController
    layout 'users_mypage'

    def index
      @messageposts = Messagepost.all
    end

    def new
      @messagepost = Messagepost.new
      @user = current_user
    end

    def create
      Messagepost.create(messagepost_params)
    end

    private
    def messagepost_params
      params.require(:messagepost).permit(:dear, :text).merge(user_id: current_user.id)
    end

end
