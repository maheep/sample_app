class Blog < ActiveRecord::Base
  attr_accessible :discription, :title
  belongs_to :user
  has_many :comments
end
