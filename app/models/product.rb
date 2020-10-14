class Product < ApplicationRecord
    belongs_to :user
    has_many :steps
    has_many :routines, through: :steps

    scope :cleanser, -> {where(use_for: 'Cleanser')}
    scope :toner, -> {where(use_for: 'Toner')}
    scope :mask, -> {where(use_for: 'Mask')}
    scope :treatement, -> {where(use_for: 'Treatement')}
    scope :essence, -> {where(use_for: 'Essence')}
    scope :serum, -> {where(use_for: 'Serum')}
    scope :moisturizer, -> {where(use_for: 'Moisturizer')}
    scope :oil_cleanse, -> {where(use_for: 'Oil Cleanser')}
    scope :lip_treat, -> {where(use_for: 'Lip Treatment')}
    scope :eye_cream, -> {where(use_for: 'Eye Cream')}
    scope :spf, -> {where(use_for: 'SPF')}
    scope :ampule, -> {where(use_for: 'Ampule')}

    scope :oily, -> {where(skintype: 'Oily')}
    scope :dry, -> {where(skintype: 'Dry')}
    scope :normal, -> {where(skintype: 'Normal')}
    scope :combo, -> {where(skintype: 'Combo')}
    scope :acne, -> {where(skintype: 'Acne Prone')}
    scope :all_skin, -> {where(skintype: 'All')}
    scope :mature, -> {where(skintype: 'Mature')}   
    
end
