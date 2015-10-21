class CreatePoses < ActiveRecord::Migration
  def change
    create_table :poses do |t|
      t.string :english_name
      t.string :sanskrit_name
      t.string :primary_photo
    end
  end
end
