class AddDodoRefToLinks < ActiveRecord::Migration
  def change
    add_reference :links, :dodo, index: true
  end
end
