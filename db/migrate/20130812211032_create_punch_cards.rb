class CreatePunchCards < ActiveRecord::Migration
  def change
    create_table :punch_cards do |t|
      t.references :user, index: true
      t.datetime :started_at
      t.datetime :ended_at
      t.float :location_lt
      t.float :location_lg

      t.timestamps
    end
  end
end
