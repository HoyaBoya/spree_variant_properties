class CreateSpreeVariantProperties < ActiveRecord::Migration
  def change
    create_table :spree_variant_properties do |t|
      t.string        :value
      t.integer       :position,          default: 0
      t.references    :variant
      t.references    :property
      t.timestamps
    end

    add_index :spree_variant_properties, :variant_id, unique: false
  end
end
