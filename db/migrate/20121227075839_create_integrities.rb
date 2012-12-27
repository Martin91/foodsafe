class CreateIntegrities < ActiveRecord::Migration
  def change
    create_table :integrities do |t|
      t.string :title
      t.text :content
      t.string :info_type

      t.timestamps
    end
  end
end
