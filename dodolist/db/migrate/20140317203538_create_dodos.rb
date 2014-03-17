class CreateDodos < ActiveRecord::Migration
  def change
    create_table :dodos do |t|
      t.string :name

      t.timestamps
    end
  end
end
