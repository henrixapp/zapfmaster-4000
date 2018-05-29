class CreateAks < ActiveRecord::Migration[5.2]
  def change
    create_table :aks do |t|
      t.string :name
      t.string :short_name
      t.boolean :reso
      t.references :room, foreign_key: true
      t.references :timeslot, foreign_key: true

      t.timestamps
    end
  end
end
