class Review < ApplicationRecord
    belongs_to :customers
    belongs_to :sellers
end 