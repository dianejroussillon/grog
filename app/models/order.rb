class Order < ApplicationRecord
  belongs_to :product
  monetize :amount_cents
  validates :status, inclusion: { in: ['pending', 'sent', 'rejected'] }
end
