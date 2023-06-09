class CreateHobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :hobbies do |t|
      t.integer :genre_id, null: false
      t.integer :user_id, null: false
    	t.string :name, null: false
    	t.text :introduction, null: false
    	t.boolean :is_active, null: false, default: true
    	# タイトル
      t.string :title, null: false
      # コンテンツ
      t.text :content, null: false
      t.timestamps
    end
  end
end
