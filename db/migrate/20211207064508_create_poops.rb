class CreatePoops < ActiveRecord::Migration[6.0]
  def change
    create_table :poops do |t|
      t.integer    :state_id,  null: false
      t.text       :detail
      t.integer    :weight_id
      t.datetime   :start_time, null: false
      t.references :human,      null: false, foreign_key: true
      t.references :user,       null: false, foreign_key: true

      t.timestamps
    end
  end
end
