class UniqueYear < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :year, :integer
  end
end
