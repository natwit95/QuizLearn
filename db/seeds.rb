# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Language.destroy_all
Quiz.destroy_all
QuizTranslation.destroy_all 
Translation.destroy_all 

User.create(name: "Jerry", username: "sir", password: "hi")

Language.create(language: "Arabic", language_code: "ar")
Language.create(language: "French", language_code: "fr")
Language.create(language: "German", language_code: "ge")
Language.create(language: "Greek", language_code: "el")
Language.create(language: "Hebrew", language_code: "he")
Language.create(language: "Hindi", language_code: "hi")
Language.create(language: "Irish", language_code: "ga")
Language.create(language: "Hungarian", language_code: "hu")
Language.create(language: "Italian", language_code: "it")
Language.create(language: "Japanese", language_code: "ja")
Language.create(language: "Korean", language_code: "ko")
Language.create(language: "Latin", language_code: "la")
Language.create(language: "Polish", language_code: "pl")
Language.create(language: "Portugese", language_code: "pt")
Language.create(language: "Romanian", language_code: "ro")
Language.create(language: "Russian", language_code: "ru")
Language.create(language: "Serbian", language_code: "sr")
Language.create(language: "Slovenian", language_code: "sl")
Language.create(language: "Spanish", language_code: "es")
Language.create(language: "Swedish", language_code: "sv")
Language.create(language: "Ukrainian", language_code: "uk")
Language.create(language: "Vietnamese", language_code: "vi")


Translation.create(input: "hello", output: "Guten Tag", language_id: 3, user_id: 1)
Translation.create(input: "bye", output: "byee", language_id: 3, user_id: 1)
Translation.create(input: "sup", output: "fasdf", language_id: 3, user_id: 1)
Translation.create(input: "yo", output: "asdfsda", language_id: 3, user_id: 1)
Translation.create(input: "car", output: "blah", language_id: 3, user_id: 1)

Quiz.create(score: 0, user_id: 1)

QuizTranslation.create(quiz_id: 1, translation_id: 1)
QuizTranslation.create(quiz_id: 1, translation_id: 2)
QuizTranslation.create(quiz_id: 1, translation_id: 3)
QuizTranslation.create(quiz_id: 1, translation_id: 4)
QuizTranslation.create(quiz_id: 1, translation_id: 5)

