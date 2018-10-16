class CreateEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :entries do |t|
      t.references :user, foreign_key: true
      t.references :job, foreign_key: true
      t.text :messages

      t.timestamps
    end
  end
end
