class Mensagem
  include Mongoid::Document

  field :title, type: String
  field :body, type: String
  field :date, type: Time
end