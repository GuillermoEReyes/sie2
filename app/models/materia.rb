class Materia < ActiveRecord::Base
  attr_accessible :codigo, :descripcion, :materiaTipo, :nivel, :orden
end
