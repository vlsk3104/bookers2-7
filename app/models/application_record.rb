class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def address
    [address_city, address_street, address_building].compact.join(', ')
  end
end
