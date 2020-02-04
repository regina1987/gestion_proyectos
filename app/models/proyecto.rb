class Proyecto < ApplicationRecord
  validates :name , presence: {message: 'empty'}

  validates :begin_at , presence: {message: 'empty'}
  validates :end_at , presence: {message: 'empty'}

end
