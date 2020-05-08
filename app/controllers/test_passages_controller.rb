# frozen_string_literal: true

class TestPassagesController < ApplicationController
  before_action :set_test_passage, only: %i[show result update]
  def show
    # тут сработает когда сделаем  redirect_to @user.test_passage(@test) из контроллере tests
  end

  def result; end

  def update
    @test_passage.accept!(params[:answers_ids])
    if @test_passage.complited?
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end
end