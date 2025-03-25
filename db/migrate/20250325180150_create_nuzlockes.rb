class CreateNuzlockes < ActiveRecord::Migration[8.0]
  def change
    create_table :nuzlockes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true
      t.text :rules
      t.integer :status

      t.timestamps
    end
  end
end
