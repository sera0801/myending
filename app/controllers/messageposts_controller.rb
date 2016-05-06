class MessagepostsController < ApplicationController
    layout 'users_mypage'

    def index
    end

    def new
      @messagepost = Messagepost.new
      @user = current_user
    end

    def create
      Messagepost.create(messagepost_params)
    end

    def destroy
      messagepost = Messagepost.find(params[:id])
      messagepost.destroy
    end

    def edit
      @messagepost = Messagepost.find(params[:id])
      @user = current_user
    end

    def update
      messagepost = Messagepost.find(params[:id])
      messagepost.update(messagepost_params)
    end


    private
    def messagepost_params
      params.require(:messagepost).permit(:dear, :text).merge(user_id: current_user.id)
    end

end
