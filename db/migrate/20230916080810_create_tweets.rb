class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :store
      t.string :category
      t.text :about
      t.string :image

      t.timestamps
    end
  end
end
