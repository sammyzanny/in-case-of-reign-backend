class User < ApplicationRecord
    has_many :rulings
    has_many :cases, through: :rulings
    has_many :options, through: :cases
    has_many :creations, class_name: "Case", foreign_key: "creator_id"
end
