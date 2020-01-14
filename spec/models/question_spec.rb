require 'rails_helper'

describe Question do
  it { should belong_to(:survey) }
  it("upcases the first word of a question") do
    survey = Survey.create({title: "Favorite Movie"})
    question = survey.questions.create({query: "what is your favorite movie?"})
    expect(question.query()).to(eq("What is your favorite movie?"))
  end
end
