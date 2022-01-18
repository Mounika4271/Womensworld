class CreateControllers < ActiveRecord::Migration[6.1]
  def change
    create_table :controllers do |t|

      t.timestamps
    end
  end
end
