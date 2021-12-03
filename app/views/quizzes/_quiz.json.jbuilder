json.extract! quiz, :id, :question, :high, :medium, :low, :created_at, :updated_at
json.url quiz_url(quiz, format: :json)
