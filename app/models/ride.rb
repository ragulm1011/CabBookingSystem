class Ride < ApplicationRecord
    belongs_to :rider
    belongs_to :driver
    belongs_to :booking_request
    has_one :payment_summary
    has_one :payment_description , through: :payment_summaries
end
