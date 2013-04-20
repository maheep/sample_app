class Blog < ActiveRecord::Base
  attr_accessible :discription, :title
  belongs_to :user
  has_many :comments
  has_reputation :votes, source: :user, aggregated_by: :sum

end
