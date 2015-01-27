class User < DomainModel
  attribute :name
  attribute :email

  association :profile, :Profile
  association :mailbox, :Mailbox

  collection :offers, :Offer
  collection :communities, :Community
end
