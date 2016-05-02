class Picture < ActiveRecord::Base

belongs_to :user

has_attached_file :portrait,
                  styles:  { medium: "300x300>", thumb: "100x100>" }
validates_attachment_content_type :portrait,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
end
