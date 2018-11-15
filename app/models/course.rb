class Course < ApplicationRecord
  
  belongs_to :teacher  
  has_many :temaries
  
  # # Para relacion muchos a muchos
  has_many :comments_course
  has_many :usersComments, through: :comments_course

  # # Para relacion muchos a muchos
  has_many :comments_lesson
  has_many :usersLesson, through: :comments_lesson

  # # Para relacion muchos a muchos
  has_many :categories_course
  has_many :categories, through: :categories_course
  
  # # Para relacion muchos a muchos
  has_many :courses_student
  has_many :students, through: :courses_student
  
end
