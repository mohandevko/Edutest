class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :name
      t.references :course, index: true

      t.timestamps
    end
  end
end
