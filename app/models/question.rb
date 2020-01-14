class Question < ApplicationRecord
  belongs_to :survey

  before_save(:upcase_question)

  private
    def upcase_question
      self.query = self.query.upcase_first
    end
end
