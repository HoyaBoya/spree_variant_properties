require 'spec_helper'

describe Spree::Variant do
  let(:variant) { create(:variant) }

  describe 'variant_properties' do
    before do
      variant_property = Spree::VariantProperty.new
      variant_property.property_name = 'foo'
      variant_property.value = 'bar'
      variant.variant_properties << variant_property 
      variant.save
    end 

    it 'should have one property' do
      expect(variant.variant_properties.size).to eq(1)
    end

    it 'should have one variant_property' do
      expect(variant.properties.size).to eq(1)
    end

    it 'should have a variant_property of foo/bar' do
      expect(variant.variant_properties.first.property_name).to eq('foo')
      expect(variant.variant_properties.first.value).to eq('bar')
    end
  end
end
