class CreateTacoRules < ActiveRecord::Migration
  def change
    create_table :taco_rules do |t|
      t.string  :description
      t.integer :team_id
      t.timestamps
    end
  end
end
