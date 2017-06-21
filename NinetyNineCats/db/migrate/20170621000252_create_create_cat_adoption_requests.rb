class CreateCreateCatAdoptionRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :cat_adoption_requests do |t|
      t.integer :cat_id, null: false
      t.date :request_date
      t.date :adoption_date
      t.string :status, default: "Available", null: false
      t.timestamps
    end

    add_index :cat_adoption_requests, :cat_id
  end
end
