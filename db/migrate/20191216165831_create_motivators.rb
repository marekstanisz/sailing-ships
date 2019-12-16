class CreateMotivators < ActiveRecord::Migration[6.0]
  def change
    create_table :motivators do |t|
      t.text :content

      t.timestamps
    end
  end
end
