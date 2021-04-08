class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :fish, null: false, foreign_key: true
      t.string :instruction
      t.string :story

      t.timestamps
    end
  end
end
