class AddUrlToAk < ActiveRecord::Migration[5.2]
  def change
    add_column :aks,:url, :string
  end
end
