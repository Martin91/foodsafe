class CreatePublicInfos < ActiveRecord::Migration
  def change
    create_table :public_infos do |t|
      t.string :index_number
      t.string :title
      t.text :content
      t.string :file_number
      t.string :organ
      t.string :info_type

      t.timestamps
    end
  end
end
