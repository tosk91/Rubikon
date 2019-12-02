class CreateModel1s < ActiveRecord::Migration[5.0]
  def change
    create_table :model1s do |t|

      t.timestamps
    end
  end
end
