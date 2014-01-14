module Spree
  Variant.class_eval do
    has_many :variant_properties, dependent: :destroy, inverse_of: :variant
    has_many :properties, through: :variant_properties
  
    # TODO: Support Spree propotypes for variants.
  end
end
