class CreateFavorites < ActiveRecord::Migration[7.1]
  def change
    create_table :favorites do |t|
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
