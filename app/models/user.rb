class User < ActiveRecord::Base
    has_secure_password

    has_many :receipts
    has_many :notes
    has_many :items
    has_many :categories
    has_many :stores

    validates :user_name, uniqueness: true
end