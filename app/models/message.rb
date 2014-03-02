class Message
  include Mongoid::Document
  belongs_to :user

  field :title, type: String
  field :body, type: String
  field :date, type: Time
end