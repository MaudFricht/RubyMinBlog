class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|

    t.references :user, null: false, foreign_key: { name: 'user_on_comments' }
    t.references :post, null: false, foreign_key: { name: 'post_on_comments' }

    t.string     :title,        null: false, limit: 150
    t.text       :content,      null: false
    t.datetime   :datetime,     null: false

    t.timestamps
    end
  end
end
