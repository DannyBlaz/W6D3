class Artwork < ApplicationRecord

    validates :artist_id, uniqueness: { scope: :title,
        message: "title already exists" }
    validates :title, presence: true
    validates :image_url, presence: true
    validates :artist_id, presence: true
    

end

