# frozen_string_literal: true

class CreateBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :badges do |t|
      t.string :title, null: false
      t.string :img, null: false
      t.string :rule, null: false
      t.string :value, null: false
      t.timestamps
    end
  end
end
