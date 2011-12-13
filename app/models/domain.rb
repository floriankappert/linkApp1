class Domain < ActiveRecord::Base
  belongs_to    :customer
  has_many      :links , :dependent => :destroy
  
  
end
