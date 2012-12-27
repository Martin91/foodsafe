class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :user_name
      t.string :user_email
      t.string :user_phone
      t.string :title
      t.text :content
      t.string :no
      t.string :status

      t.timestamps
    end
  end
end
