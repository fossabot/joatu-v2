class OfferForm < ApplicationForm
  def self.policy_class
    OfferPolicy
  end

  property :title, validates: {presence: true}
  property :description
end
