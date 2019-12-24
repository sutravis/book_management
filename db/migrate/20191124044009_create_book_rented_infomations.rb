class CreateBookRentedInfomations < ActiveRecord::Migration[6.0]
  def change
    create_table :book_rented_infomations do |t|
      t.date :rented_date
      t.date :due_date
      t.references :book, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
