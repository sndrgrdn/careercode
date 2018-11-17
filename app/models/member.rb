class Member < ApplicationRecord
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true

  enum member_type: { business: 'business', candidate: 'canidate' }
end
