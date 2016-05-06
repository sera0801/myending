class PicturesController < ApplicationController
    layout 'users_mypage'

    def index
    end

    def new
      @picture = Picture.new
      @user = current_user
    end

    def create
      Picture.create(picture_params)
    end

    def destroy
      picture = Picture.find(params[:id])
      picture.destroy
    end

    private
    def picture_params
      params.require(:picture).permit(:title, :portrait).merge(user_id: current_user.id)
    end

end
