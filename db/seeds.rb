# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Language.destroy_all
UserLanguage.destroy_all
Quiz.destroy_all
QuizTranslation.destroy_all 
Translation.destroy_all 

User.create(name: "Jerry", username: "sir", password: "hi")

Language.create(language: "German")

UserLanguage.create(user_id: 1, language_id: 1)

Translation.create(input: "hello", output: "Guten Tag", user_language_id: 1)
Translation.create(input: "bye", output: "byee", user_language_id: 1)
Translation.create(input: "sup", output: "fasdf", user_language_id: 1)
Translation.create(input: "yo", output: "asdfsda", user_language_id: 1)
Translation.create(input: "car", output: "blah", user_language_id: 1)

Quiz.create(score: 0, user_id: 1)

QuizTranslation.create(quiz_id: 1, translation_id: 1)
QuizTranslation.create(quiz_id: 1, translation_id: 2)
QuizTranslation.create(quiz_id: 1, translation_id: 3)
QuizTranslation.create(quiz_id: 1, translation_id: 4)
QuizTranslation.create(quiz_id: 1, translation_id: 5)

