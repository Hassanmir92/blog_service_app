class Message < ActiveRecord::Base
  validates_presence_of :body, message: "Unsuccessful to submit as your message is empty!"
  validates :body, length: { maximum: 150, message: "Unsuccessful to submit your message cannot exceed 150 characters!"}
end
