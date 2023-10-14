class AddDetailsToPerfumes < ActiveRecord::Migration[6.1]
  def change
    add_column :perfumes, :question2, :string
    add_column :perfumes, :question3, :string
  end
end
