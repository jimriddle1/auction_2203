require './lib/attendee'
require './lib/auction'
require './lib/item'

RSpec.describe Attendee do

  it 'exists' do
    attendee = Attendee.new({name: 'Megan', budget: '$50'})
    expect(attendee).to be_an_instance_of(Attendee)
  end

  it 'has readable attributes' do
    attendee = Attendee.new({name: 'Megan', budget: '$50'})
    expect(attendee.name).to eq("Megan")
    expect(attendee.budget).to eq(50)
  end

end
