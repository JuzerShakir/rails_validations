class ValidatesAcceptanceOf < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :terms_of_services, :string
  end
end
