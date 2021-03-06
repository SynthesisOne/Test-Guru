# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question
  scope :correct, -> { where(correct: true) }
end
