class CreatePosts < ActiveRecord::Migration[5.1]
    def change
       create_table :posts do |t|

            t.references :user, null: false, foreign_key: { name: 'user_on_posts' }

            t.string     :title,        null: false
            t.text       :content,      null: false
            t.date       :date,        null: false
            t.timestamps
       end
     end
end
