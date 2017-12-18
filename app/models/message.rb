class Message < ActiveRecord::Base # :nodoc:
  validates :body, presence: {
    message: "Your message can't be empty!"
  }

  validates :body, length: {
    maximum: 150,
    message: 'Your message cannot exceed 150 characters!'
  }
end
