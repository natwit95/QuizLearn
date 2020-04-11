class QuizSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :score
end
