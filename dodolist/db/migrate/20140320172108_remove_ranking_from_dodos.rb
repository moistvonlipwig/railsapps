class RemoveRankingFromDodos < ActiveRecord::Migration
  def change
    remove_column :dodos, :ranking, :integer
  end
end
