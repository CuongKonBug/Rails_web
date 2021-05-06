class CreateTruyens < ActiveRecord::Migration[6.1]
  def change
    create_table :truyens do |t|
      t.string :tentruyen
      t.string :mota
      t.string :noidung
      t.integer :iddanhmuc
      t.string :thoiluong
      t.string :anh

      t.timestamps
    end
  end
end
