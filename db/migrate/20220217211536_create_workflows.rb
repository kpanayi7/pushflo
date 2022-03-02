class CreateWorkflows < ActiveRecord::Migration[6.1]
  def change
    create_table :workflows do |t|
      t.string :title
      t.text :description
      t.text :walkthrough
      t.text :program
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
