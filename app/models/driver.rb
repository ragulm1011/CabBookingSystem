class Driver < ApplicationRecord
    has_one :user , as: :userable , dependent: :destroy
    has_one :address , as: :addressable, dependent: :destroy
    has_and_belongs_to_many :vehicles , join_table: :drivers_vehicles
    has_many :payment_summaries
    has_many :riders , through: :payment_summaries
end
