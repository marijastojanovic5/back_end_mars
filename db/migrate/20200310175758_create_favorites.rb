class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :mars_card_id
      t.string :integer

      t.timestamps
    end
  end
end
