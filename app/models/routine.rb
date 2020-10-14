class Routine < ApplicationRecord
    belongs_to :user
    has_many :steps
    has_many :products, through: :steps
    validates_presence_of :name, :skintype

    def taketime
        self.steps.sum do |step|
            step.duration
        end
    end
end
