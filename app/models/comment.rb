class Comment < ApplicationRecord

    belongs_to :artwork,
    primary_key: :id,
    foreign_key: :artwork_id,
    class_name: :Artwork

    belongs_to :author,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

    
end
