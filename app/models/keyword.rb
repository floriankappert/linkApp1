class Keyword < ActiveRecord::Base
  validates :text, :presence => true
  validates :customer_id, :presence => true
  
  belongs_to    :customer
  has_many      :links
end
