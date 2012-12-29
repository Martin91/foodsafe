class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :license_no
      t.string :company_name
      t.string :company_address
      t.string :health_function

      t.timestamps
    end
  end
end
