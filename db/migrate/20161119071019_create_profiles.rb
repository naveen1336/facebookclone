class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
    	t.string :subscriptions
    	t.string :address
    	t.string :relationship
    	t.string  :country
    	t.string  :phone_no
    	t.integer :user_id
      t.timestamps
    end
  end
end
