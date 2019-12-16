class CreateObstacles < ActiveRecord::Migration[6.0]
  def change
    create_table :obstacles do |t|
      t.text :content

      t.timestamps
    end
  end
end
