class AddSupplierinfo < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :supplierinfo, :integer
  end
end
