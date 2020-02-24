class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :name_jp
      t.string :name_etc
      t.timestamps
    end
  end
end
