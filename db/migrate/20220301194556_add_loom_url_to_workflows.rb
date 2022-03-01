class AddLoomUrlToWorkflows < ActiveRecord::Migration[6.1]
  def change
    add_column :workflows, :loom_url, :string
  end
end
