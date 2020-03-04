require 'rails_helper'

RSpec.describe Person, type: :model do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email_address) }
  it { should validate_presence_of(:job_title) }

end
