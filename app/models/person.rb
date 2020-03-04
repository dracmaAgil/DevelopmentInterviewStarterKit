class Person < ApplicationRecord

  validates_presence_of :name, :email_address, :job_title

end
