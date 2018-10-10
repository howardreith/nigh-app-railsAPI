class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :name
      t.references :admins
      t.references :members
      t.integer :max_members
      t.string :description
      t.boolean :requires_invitation_to_join
      t.references :events

      t.timestamps
    end
  end
end
