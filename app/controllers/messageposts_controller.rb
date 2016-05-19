class MessagepostsController < ApplicationController
    layout 'users_mypage'

    def index
    end

    def new
      @messagepost = Messagepost.new
      @user = current_user
    end

    def create
      @messagepost= Messagepost.create(messagepost_params)
      @user= current_user
      if @messagepost.errors.any?
        render :new
      end
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

    def show
      @messagepost = Messagepost.find(params[:id])
      @user = current_user

      respond_to do |format|
      format.html
      format.pdf do
        render pdf: "pdffile",                        # ".pdf"拡張子は不要
               # footer: {   html: {   template: 'customers/footer.html.erb' } }, # footer用のテンプレートファイル指定
               show_as_html: params[:debug].present?  # debugを有効にする

        end
      end
    end


    private
    def messagepost_params
      params.require(:messagepost).permit(:dear, :text).merge(user_id: current_user.id)
    end

end
