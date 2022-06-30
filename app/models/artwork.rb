class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true

    validates :artist_id, uniqueness: { scope: :title }


    belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

    has_many :viewers,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :ArtworkShare

    has_many :shared_viewers,
    through: :viewers,
    source: :viewer

    has_many :comments,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Comment,
    dependent: :destroy

end