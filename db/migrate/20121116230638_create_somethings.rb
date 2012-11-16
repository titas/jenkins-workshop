class CreateSomethings < ActiveRecord::Migration
  def change
    create_table :somethings do |t|

      t.timestamps
    end
  end
end
