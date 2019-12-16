class CreateLessonsLearneds < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons_learneds do |t|
      t.text :content

      t.timestamps
    end
  end
end
