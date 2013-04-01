class Disciplina < ActiveRecord::Base
  attr_accessible :fechaSancion, :firmaSancion, :lectivo, :maestroSancion, :motivoSancion, :rne, :tipoDisciplina
end
