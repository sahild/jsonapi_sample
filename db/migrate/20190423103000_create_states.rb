class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.references :country
      t.string :name

      t.timestamps
    end
  end
end
