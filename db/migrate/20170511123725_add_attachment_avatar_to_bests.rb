class AddAttachmentAvatarToBests < ActiveRecord::Migration
  def self.up
    change_table :bests do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :bests, :avatar
  end
end
