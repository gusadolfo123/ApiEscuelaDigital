class Category < ApplicationRecord
    # # Para relacion muchos a muchos
    has_many :categories_course
    has_many :courses, through: :categories_course

end
