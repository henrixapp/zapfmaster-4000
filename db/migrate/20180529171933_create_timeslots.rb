class CreateTimeslots < ActiveRecord::Migration[5.2]
  def change
    create_table :timeslots do |t|
      t.string :name
      t.datetime :beginn
      t.datetime :ende

      t.timestamps
    end
  end
end
