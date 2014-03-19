class AddRankingToDodos < ActiveRecord::Migration
  def change
     add_column :dodos, :ranking, :integer
  end
end
