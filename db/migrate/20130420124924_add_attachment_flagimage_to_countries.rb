class AddAttachmentFlagimageToCountries < ActiveRecord::Migration
  def self.up
    change_table :countries do |t|
      t.attachment :flagimage
    end
  end

  def self.down
    drop_attached_file :countries, :flagimage
  end
end
