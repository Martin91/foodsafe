class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :produce_address
      t.string :license_no
      t.string :legal_person
      t.string :license_project
      t.string :register_address
      t.string :valid_for

      t.timestamps
    end
  end
end
