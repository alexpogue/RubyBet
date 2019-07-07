class CreateBetEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :bet_events do |t|
      t.string :name
      t.text :description
      t.datetime :end_time
      t.integer :status
      t.integer :winning_option

      t.timestamps
    end
  end
end
