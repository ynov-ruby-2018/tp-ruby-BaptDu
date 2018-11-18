class Post < ApplicationRecord
    belongs_to :user
    # Manque la validation sur le post vide
end
