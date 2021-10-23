class Inclusion < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :login_source, :string
  end
end
