class Case < ApplicationRecord
    has_many :rulings
    has_many :options
    has_many :users, through: :rulings
    belongs_to :creator, :class_name => "User"
end
