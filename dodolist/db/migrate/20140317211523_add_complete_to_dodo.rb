class AddCompleteToDodo < ActiveRecord::Migration
  def change
    add_column :dodos, :complete, :boolean
  end
end
