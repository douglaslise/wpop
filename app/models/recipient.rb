class Recipient
  include Mongoid::Document
  belongs_to :message
  belongs_to :user, inverse_of: nil
  field :name
  field :read_date
end
