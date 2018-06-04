class CreateRubaiyats < ActiveRecord::Migration
  def change
    create_table :rubaiyats do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
