class FixResumeContent < ActiveRecord::Migration[5.0]
  def change
    rename_column :resumes, :context, :content
  end
end
