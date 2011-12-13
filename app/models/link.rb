class Link < ActiveRecord::Base
  validates :url, :presence => true
  validates_format_of :url, :with => /^(http:\/\/www.|https:\/\/www.|http:\/\/.)[^.]+[.]+([d][e]|[a][t]|[e][s]|[u][s]|[c][o][.][u][k]|[c][o][m]|[o][r][g]|[n][e][t])/
  validates :keyword, :presence => true
  
  belongs_to    :customer
  belongs_to    :keyword
  belongs_to    :domain
  belongs_to    :state
  
  def host
    require 'uri'
    URI.parse(url).host
  end
  
end
