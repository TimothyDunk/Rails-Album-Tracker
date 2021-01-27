class Album < ApplicationRecord
    has_many :thoughts

    validates :title, presence: true
    validates :artist, presence: true
    validates :year, presence: true
end
