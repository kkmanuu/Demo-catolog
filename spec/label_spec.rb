require 'rspec'
require_relative '../classes/label'

describe Label do
  before :each do
    @label = Label.new('Love of my life')
  end

  context 'when label is created' do
    it 'should return @label as an instance of Label' do
      expect(@label).to be_instance_of Label
    end

    it 'should have name as Love of my life' do
      expect(@label.name).to eq('Love of my life')
    end

    it 'should have item as nil' do
      expect(@label.item).to be_nil
    end
  end
end