require './lib/attendee'
require './lib/auction'
require './lib/item'

RSpec.describe Item do

  it 'exists' do
    item1 = Item.new('Chalkware Piggy Bank')
    expect(item1).to be_an_instance_of(Item)
  end

  it 'has readable attributes' do
    item1 = Item.new('Chalkware Piggy Bank')
    expect(item1.name).to eq("Chalkware Piggy Bank")
    expect(item1.bids).to eq({})
  end

  it 'can add bidds' do
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')
    item3 = Item.new('Homemade Chocolate Chip Cookies')
    item4 = Item.new('2 Days Dogsitting')
    item5 = Item.new('Forever Stamps')

    attendee1 = Attendee.new({name: 'Megan', budget: '$50'})
    attendee2 = Attendee.new({name: 'Bob', budget: '$75'})
    attendee3 = Attendee.new({name: 'Mike', budget: '$100'})

    auction = Auction.new

    auction.add_item(item1)
    auction.add_item(item2)
    auction.add_item(item3)
    auction.add_item(item4)
    auction.add_item(item5)

    item1.add_bid(attendee2, 20)
    item1.add_bid(attendee1, 22)

    expected = {attendee2 => 20, attendee1 => 22}
    # require 'pry'; binding.pry

    expect(item1.bids).to eq(expected)
  end


end
