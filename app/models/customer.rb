class Customer < ActiveRecord::Base
  belongs_to    :profile
  has_many      :links
  has_many      :keywords
end
