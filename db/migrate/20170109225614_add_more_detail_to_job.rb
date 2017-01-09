class AddMoreDetailToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :wage_upper_bound, :integer, default: 0
    add_column :jobs, :wage_lower_bound, :integer, default: 10000
    add_column :jobs, :contact_email, :string, default: "xdite@growth.school"
  end
end
