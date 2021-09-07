class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :name

      t.timestamps null: false
    end

    add_foreign_key :votes, :restaurants
  end
end
