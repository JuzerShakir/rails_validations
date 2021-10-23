class Confirmation < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :password, :string
  end
end
