class UsersController < ApplicationController
   layout 'users_mypage'

    def show
    # for create PDF
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "pdffile",                        # ".pdf"拡張子は不要
               # footer: {   html: {   template: 'customers/footer.html.erb' } }, # footer用のテンプレートファイル指定
               show_as_html: params[:debug].present?  # debugを有効にする
      end
    end
    end
end

