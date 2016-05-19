class Messagepost < ActiveRecord::Base
  belongs_to :user


  validate :add_error_sample

def add_error_sample
    # nameが空のときにエラーメッセージを追加する
    if text.blank?
      errors[:base] << "メッセージは必ず入力して下さい"
    end

    # 価格が空のときにエラーメッセージを追加する
    # if price.blank?
    #   errors[:base] << "価格は必ず入力して下さい"
    # end
  end
end
