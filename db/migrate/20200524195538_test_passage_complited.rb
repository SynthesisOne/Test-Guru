# frozen_string_literal: true

class TestPassageComplited < ActiveRecord::Migration[6.0]
  def change
    add_column(:test_passages, :complited, :boolean, default: false)
  end
end
