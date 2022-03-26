class AddApprovedToWorkflows < ActiveRecord::Migration[6.1]
  def change
    add_column :workflows, :approved, :boolean, :default => false
  end
end
