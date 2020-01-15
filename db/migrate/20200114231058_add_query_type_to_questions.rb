class AddQueryTypeToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column(:questions, :query_type, :string)
  end
end
