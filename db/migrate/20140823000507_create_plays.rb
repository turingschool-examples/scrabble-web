class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :word
      t.integer :score

      t.timestamps
    end
  end
end
