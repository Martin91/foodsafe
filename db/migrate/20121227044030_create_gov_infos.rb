class CreateGovInfos < ActiveRecord::Migration
  def change
    create_table :gov_infos do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
