class Comment < ActiveRecord::Base
  belongs_to :customer
  has_many :users
  
  validates :body,          presence: true, length: {maximum: 200}
  validates :customer_id,   presence: true
end
