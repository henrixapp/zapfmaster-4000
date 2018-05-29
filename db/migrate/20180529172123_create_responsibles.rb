class CreateResponsibles < ActiveRecord::Migration[5.2]
  def change
    create_table :responsibles do |t|
      t.references :ak, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
