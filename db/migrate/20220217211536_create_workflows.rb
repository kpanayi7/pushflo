class CreateWorkflows < ActiveRecord::Migration[6.1]
  def change
    create_table :workflows do |t|
      t.string :title
      t.text :description
      t.text :walkthrough
      t.text :program

      t.timestamps
    end
  end
end
