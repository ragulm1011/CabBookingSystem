class PaymentDescription < ApplicationRecord
    has_one :payment_summary
end
