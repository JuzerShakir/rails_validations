class EmailService < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :email_service, :string
  end
end
