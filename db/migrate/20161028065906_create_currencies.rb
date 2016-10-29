class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.string :code
      t.integer :digital_code
      t.string :name

      t.timestamps
    end
  end
end
