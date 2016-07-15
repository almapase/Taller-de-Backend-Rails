class AddColumnToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :discount, :integer
  end
end
