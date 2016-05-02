class AddAttachmentPortraitToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :portrait
    end
  end

  def self.down
    remove_attachment :pictures, :portrait
  end
end
