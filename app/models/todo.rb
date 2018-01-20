class Todo < ApplicationRecord
  belongs_to :project, optional: true
  #validates_presence_of :isComplited
end
