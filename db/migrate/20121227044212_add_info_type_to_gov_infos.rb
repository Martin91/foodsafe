class AddInfoTypeToGovInfos < ActiveRecord::Migration
  def change
    add_column :gov_infos, :info_type, :string
  end
end
