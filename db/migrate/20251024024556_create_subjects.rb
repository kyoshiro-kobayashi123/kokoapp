class CreateSubjects < ActiveRecord::Migration[8.0]
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.string :color

      t.timestamps
    end
  end
end
