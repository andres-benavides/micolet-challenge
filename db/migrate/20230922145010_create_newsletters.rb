class CreateNewsletters < ActiveRecord::Migration[7.0]
  def change
    create_table :newsletters do |t|
      t.string :email
      t.boolean :women_fashion
      t.boolean :men_fashion
      t.boolean :children_fashion

      t.timestamps
    end
  end
end
