class Event < ActiveRecord::Base
  validates :organizer_name, :title, :date, presence: true
  validates :title, uniqueness: true
  validates :organizer_email, format: { with: /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i, message: "Please enter a valid email."}
end
