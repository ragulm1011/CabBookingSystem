class User < ApplicationRecord
    belongs_to :userable , polymorphic: true
    validates :name , presence: true
end
