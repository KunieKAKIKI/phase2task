class CreateKvitters < ActiveRecord::Migration[5.1]
  def change
    create_table :kvitters do |t|
      t.text :content

      t.timestamps
    end
  end
end
