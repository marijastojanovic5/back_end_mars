class CreateMarsCards < ActiveRecord::Migration[6.0]
  def change
    create_table :mars_cards do |t|
      t.string :image
      t.string :name
      t.string :status
      t.string :launch_date
      t.string :landing_date

      t.timestamps
    end
  end
end
