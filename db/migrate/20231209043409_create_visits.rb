class CreateVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :visits do |t|
      t.string :user_agent
      t.string :ip_address
      t.string :host
      t.references :link, null: false, foreign_key: true

      t.timestamps
    end
  end
end
