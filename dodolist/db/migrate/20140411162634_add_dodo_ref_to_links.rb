class AddDodoRefToLinks < ActiveRecord::Migration
  def change
    add_column :links, :dodo, :refernces
  end
end
