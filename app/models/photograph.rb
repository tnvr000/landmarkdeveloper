class Photograph < ApplicationRecord
  has_attached_file :photo, styles: {large: '1280x960', small: '256x192', thumb: '56x42'}, default_url: '/images/:style/missing.jpg'
  validates_attachment_content_type :photo, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
