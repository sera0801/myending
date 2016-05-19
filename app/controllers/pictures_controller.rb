class PicturesController < ApplicationController
    layout 'users_mypage'
    before_action :set_user, only: :create

    def index
    end

    def new
      @picture = Picture.new
      @user = current_user
    end

    def create
      @picture = current_user.pictures.create(picture_params)
      if @picture.errors.any?
        render :new
      end

    end

    def destroy
      picture = Picture.find(params[:id])
      picture.destroy
    end

    def show
      @picture = Picture.find(params[:id])
    end

    private

    def set_user
      @user = current_user
    end
    def picture_params
      params.require(:picture).permit(:title, :portrait).merge(user_id: current_user.id)
    end

end
