class PaymentSummary < ApplicationRecord
    belongs_to :driver
    belongs_to :rider
    belongs_to :ride
    belongs_to :payment_description
end
