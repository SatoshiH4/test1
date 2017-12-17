class AddContactMessageToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :contact_messsage, :text
  end
end
