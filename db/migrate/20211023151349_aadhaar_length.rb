class AadhaarLength < ActiveRecord::Migration[6.1]
  def change
    add_column :table_ones, :aadhar_id, :integer
  end
end
