class ChangeColumnDefaultValue < ActiveRecord::Migration[5.0]
  def change
    change_column_default :jobs, :wage_upper_bound, 10000
    change_column_default :jobs, :wage_lower_bound, 0
  end
end
