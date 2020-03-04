require 'spec_helper'

describe SALESLOFT do
  it 'should get people list' do
    #expect(SALESLOFT).to respond_to :get_people
    get_people = SALESLOFT.get_people
    expect(get_people).not_to be_empty
 end
end