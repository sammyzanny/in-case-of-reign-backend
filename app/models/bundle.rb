class Bundle < ApplicationRecord
    has_many :bundlors
    has_many :cases, through: :bundlors
end
