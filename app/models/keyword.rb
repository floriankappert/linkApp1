class Keyword < ActiveRecord::Base
  belongs_to    :customer
  has_many      :links
end
