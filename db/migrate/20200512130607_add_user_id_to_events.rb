class AddUserIdToEvents < ActiveRecord::Migration[5.2]
  def change
    # add_column :events, :user_id, :integer
    change_table :events do |t|
    t.belongs_to :user, index: true
    end
  end
end
