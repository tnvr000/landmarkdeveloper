class Photograph < ApplicationRecord
  has_attached_file :photo, styles: {large: '1280x960', medium: '512x384', small: '256x192', thumb: '56x42'}, default_url: '/images/:style/missing.jpg'
  validates_attachment_content_type :photo, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.carousel_photos
    where('use_in_carousel = ?', true).order('id')
  end
end
