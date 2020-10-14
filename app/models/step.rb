class Step < ApplicationRecord
    belongs_to :routine
    belongs_to :product
    validates_presence_of :name, :duration, :product_id
end
