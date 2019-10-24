class CreateCourseAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :course_assignments do |t|
      t.string :section
      t.references :professor, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
