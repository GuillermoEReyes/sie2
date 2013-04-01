class Curso < ActiveRecord::Base
  attr_accessible :codigo, :codigo_siguiente_curso, :descripcion, :tipo
end
