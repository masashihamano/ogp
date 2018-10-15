class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
