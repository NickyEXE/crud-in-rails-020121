class CreateKickboxers < ActiveRecord::Migration[6.1]
  def change
    create_table :kickboxers do |t|
      t.string :name
      t.integer :speed
      t.integer :fist_size
      t.boolean :villain

      t.timestamps
    end
  end
end
