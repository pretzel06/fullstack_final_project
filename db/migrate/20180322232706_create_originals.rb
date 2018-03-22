class CreateOriginals < ActiveRecord::Migration[5.1]
  def change
    create_table :originals do |t|
      t.string :name

      t.timestamps
    end
  end
end
