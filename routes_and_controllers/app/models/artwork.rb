class Artwork < ApplicationRecord
    validates :img_url, :title, :artist_id, presence: true
    validates :img_url, uniqueness: true
end