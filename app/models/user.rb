class User < ApplicationRecord
    has_many :routines
    has_many :products
    validates_presence_of :username, :password
    validates_uniqueness_of :username
    has_secure_password
    delegate :name, to: :routine, prefix: true
    delegate :name, to: :product, prefix: true
end
