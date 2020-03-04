class PeopleController < ApplicationController

  require 'sales_loft_api'

  def people_list
    @people = SalesLoftApi.get_people
  end

end
