class CreateLaws < ActiveRecord::Migration
  def change
    create_table :laws do |t|
      t.string :title
      t.text :content
      t.string :law_type

      t.timestamps
    end
  end
end
