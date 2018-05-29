class AddTypeToSlots < ActiveRecord::Migration[5.2]
  def change
    add_column :timeslots,:typus,:string
    add_column :timeslots,:place,:string
    add_column :timeslots,:begin_humanized, :string
    add_column :timeslots, :end_humanized, :string
  end
end
