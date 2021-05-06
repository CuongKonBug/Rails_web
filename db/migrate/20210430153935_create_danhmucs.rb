class CreateDanhmucs < ActiveRecord::Migration[6.1]
  def change
    create_table :danhmucs do |t|
      t.string :tendanhmuc

      t.timestamps
    end
  end
end
