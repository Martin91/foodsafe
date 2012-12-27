class CreateOrgans < ActiveRecord::Migration
  def change
    create_table :organs do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
