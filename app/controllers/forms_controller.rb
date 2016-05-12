class FormsController < ApplicationController
  layout 'users_mypage'

  def show
    @form = Form.find(params[:user_id])
    @user = current_user
  end

  def new
    @form = Form.new
    @user = current_user
  end

  def create
    Form.create(form_params)
  end

  def edit
    @form = Form.find(params[:user_id])
    @user = current_user
  end

  def update
    form = Form.find(params[:user_id])
    form.update(form_params)
  end

  private
    def form_params
      params.require(:form).permit(
      :q1,
      :q1_d,
      :q1_d,
      :q2,
      :q2_d,
      :q3,
      :q3_d,
      :q4,
      :q4_d,
      :q5,
      :q5_d,
      :moshu_name,
      :moshu_kana,
      :moshu_number,
      :aisatsu_name,
      :aisatsu_kana,
      :aisatsu_number,
      :q8,
      :q8_d,
      :q9,
      :q9_d,
      :q10,
      :q10_d,
      :q11,
      :q11_d,
      :q12,
      :q12_d,
      :q13,
      :q13_d,
      :q14_d,
      :q15,
      :q15_d,
      :q16,
      :q16_d,
      :q17,
      :q17_d,
      :q18,
      :q18_d,
      :q19,
      :q19_d,
      :q20_d,
      :q21,
      :q21_d,
      :q22,
      :q22_d,
      :requests).merge(user_id: current_user.id)
    end
end


