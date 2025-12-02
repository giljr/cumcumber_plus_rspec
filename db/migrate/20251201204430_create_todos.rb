class CreateTodos < ActiveRecord::Migration[8.1]
  def change
    create_table :todos do |t|
      t.text :note
      t.boolean :done

      t.timestamps
    end
  end
end
