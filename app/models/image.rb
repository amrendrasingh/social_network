class Image < ActiveRecord::Base

  belongs_to :user
  has_attached_file :photo, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
