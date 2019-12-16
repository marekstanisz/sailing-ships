class CreateFuckups < ActiveRecord::Migration[6.0]
  def change
    create_table :fuckups do |t|
      t.text :content

      t.timestamps
    end
  end
end
