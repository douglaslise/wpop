class User
  include Mongoid::Document
  has_many :messages
  
  field :email, type: String
end