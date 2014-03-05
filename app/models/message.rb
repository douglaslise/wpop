class Message
  include Mongoid::Document
  belongs_to :sender, class_name: "User", inverse_of: nil
  has_many :recipients

  field :title, type: String
  field :body, type: String
  field :date, type: Time

  after_initialize do |message|
    message.date = Time.now
  end

end
