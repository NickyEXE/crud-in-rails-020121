class AddMissingTeethToKickboxer < ActiveRecord::Migration[6.1]
  def change
    add_column :kickboxers, :missing_teeth, :integer
  end
end
