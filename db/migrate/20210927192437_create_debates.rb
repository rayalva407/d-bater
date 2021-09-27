class CreateDebates < ActiveRecord::Migration[6.1]
  def change
    create_table :debates do |t|
      t.belongs_to :user
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
