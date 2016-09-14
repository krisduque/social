class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.references :leader, foreign_key: true
      t.references :follower, foreign_key: true

      t.timestamps
    end
  end
end
