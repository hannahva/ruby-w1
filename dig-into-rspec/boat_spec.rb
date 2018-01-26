require_relative 'boat'

describe Boat do
  it 'should create boats' do
    expect(Boat.new).to be_a Boat
  end
  describe '#allowed_aboard?' do
    it 'returns true if inventory includes a lifejacket' do
      a_boat = Boat.new
      allowed = a_boat.allowed_aboard?(['lifejacket', 'sunglasses'])
      expect(allowed).to be true
    end

    it 'returns false if inventory does not include a lifejacket' do
      a_boat = Boat.new
      allowed = a_boat.allowed_aboard?(['gum', 'pencil'])
      expect(allowed).to be false
    end
  end
end