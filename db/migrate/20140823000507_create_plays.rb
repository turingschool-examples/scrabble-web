class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :word

      t.timestamps
    end
  end
end
