$:.unshift(File.dirname(__FILE__))
require 'sales_loft_api'
module SALESLOFT
  def self.sales_loft
    @sales_loft ||= SalesLoftApi.new()
  end

  def self.api=()
    @sales_loft = SalesLoftApi.new()
  end

  def self.get_people()
    sales_loft.get_people()
  end

end
