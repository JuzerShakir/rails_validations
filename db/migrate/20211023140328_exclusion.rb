class Exclusion < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :email, :string
  end
end
