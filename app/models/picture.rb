class Picture < ActiveRecord::Base

# validates :portrait,  presence: true

validate :add_error_sample

def add_error_sample
    # nameが空のときにエラーメッセージを追加する
    if portrait.blank?
      errors[:base] << "写真は必ず選択して下さい"
    end

    # 価格が空のときにエラーメッセージを追加する
    # if price.blank?
    #   errors[:base] << "価格は必ず入力して下さい"
    # end
  end





belongs_to :user

has_attached_file :portrait,
                  styles:  { medium: "300x300>", thumb: "100x100>" }
validates_attachment_content_type :portrait,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
end


