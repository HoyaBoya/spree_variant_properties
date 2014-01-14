require 'spec_helper'

describe Spree::VariantProperty do
  let(:variant_property) { Spree::VariantProperty.new }

  describe 'property_name=' do
    subject do 
      variant_property.property_name = 'foo'
    end

    it 'should create property' do
      subject
      expect(Spree::Property.find_by_name('foo')).to_not be_nil
    end

    it 'should should assign property' do
      expect(variant_property.property).to eq(Spree::Property.find_by_name('foo'))
    end
  end

  describe 'property_name' do
    subject do
      variant_property.property_name = 'foo'
    end

    it 'should delegate to property.name' do
      subject
      expect(variant_property.property_name).to eq('foo')
    end
  end
end
