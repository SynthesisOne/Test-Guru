# frozen_string_literal: true

class AddAuthorForeignToTests < ActiveRecord::Migration[6.0]
  def change
    add_reference(:tests, :author, foreign_key: { to_table: :users })
  end
end
