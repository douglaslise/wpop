class User
  include Mongoid::Document
  #has_many :sent_messages, class_name: 'Message', inverse_of: :sender
  #has_many :received_messages, class_name: Message, inverse_of: nil

  field :email, type: String
  field :name, type: String
end
