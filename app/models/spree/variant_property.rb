class Spree::VariantProperty < ActiveRecord::Base
  belongs_to :variant, touch: true, class_name: 'Spree::Variant', inverse_of: :variant_properties
  belongs_to :property, class_name: 'Spree::Property', inverse_of: :variant_properties

  validates :property, presence: true
  validates :value, length: { maximum: 255 }

  default_scope -> { order("#{self.table_name}.position") }

  def property_name
    property.name if property
  end

  def property_name=(name)
    unless name.blank?
      unless property = Spree::Property.find_by(name: name)
        property = Spree::Property.create(name: name, presentation: name)
      end
      self.property = property
    end
  end
end
