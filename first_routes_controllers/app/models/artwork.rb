class Artwork < ApplicationRecord

    validates :artist_id, uniqueness: { scope: :title,
        message: "title already exists" }
    validates :title, presence: true
    validates :image_url, presence: true
    validates :artist_id, presence: true
    
    belongs_to :artist,
        primary_key: :id,
        foreign_key: :artist_id,
        class_name: :User,
        dependent: :destroy

    has_many :artworks,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare

    has_many :shared_viewers,
        through: :artworks,
        source: :viewer

    def self.user_artworks(user_id)

        Artwork
            .joins(:artist)
            .joins()
            .where(users: {id: user_id})
            .where(artwork_shares: {})

    end

end

