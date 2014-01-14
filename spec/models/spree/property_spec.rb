require 'spec_helper'

describe Spree::Property do
  let(:property) { Spree::Property.create!(name: 'foo', presentation: 'Foo') }
  let(:variant) { create(:variant) }

  describe 'variants' do
    before do
      variant_property = Spree::VariantProperty.new
      variant_property.property = property
      variant_property.value = 'bar'
      variant.variant_properties << variant_property
      variant.save
    end

    it 'should have one variant' do
      expect(property.variants.size).to eq(1)
    end

    it 'should have contain the variant with the property' do
      expect(property.variants.first).to eq(variant)
    end

    it 'should not pollute products' do
      expect(property.products.size).to eq(0)
    end
  end
end
