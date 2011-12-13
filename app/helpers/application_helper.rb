module ApplicationHelper
  def make_domains_uniq(domains)
    domainArray = Array.new
    
    domains.each do |domain|
      domainArray.push(domain)
    end
    
    domainArray.uniq
  end
end
