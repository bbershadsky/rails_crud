class CreateCreateNews < ActiveRecord::Migration[5.1]
  def change
    create_table :create_news do |t|
      t.string :bill_to
      t.numeric :contract_num
      t.text :description

      t.timestamps
    end
  end
end
