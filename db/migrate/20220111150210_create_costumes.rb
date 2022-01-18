class CreateCostumes < ActiveRecord::Migration[6.1]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :category
      t.text :desciption
      t.float :price
      

      t.timestamps
    end
  end
end
