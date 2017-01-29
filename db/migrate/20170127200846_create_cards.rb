class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :CardNumber
      t.string  :RealName
      t.string  :Gender
      t.date    :Birthday
      t.string  :Occupation
      t.string  :TypeOfCard
      t.float   :EgoBalance
      t.string  :MobileNumber
      t.string  :email
      t.string  :Issued
      t.date    :LastBuy

      t.timestamps
    end
    add_index :cards, :CardNumber
  end
end
