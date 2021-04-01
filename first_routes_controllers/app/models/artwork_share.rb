class ArtworkShare < ApplicationRecord

    validates :viewer_id, uniqueness: { scope: :artwork_id,
        message: "can't see again, already viewed" }

    validates :artwork_id, presence: true
    validates :viewer_id, presence: true 

    belongs_to :artwork,
        primary_key: :id,
        foreign_key: :artwork_id,
        class_name: :Artwork

    belongs_to :viewer,
        primary_key: :id,
        foreign_key: :viewer_id,
        class_name: :User,
        dependent: :destroy



end