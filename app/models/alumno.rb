class Alumno < ActiveRecord::Base
  attr_accessible :EscuelaProviene, :IdFamilia, :apellido1, :apellido2, :avenida, :calle, :casa, :colonia, :departamento, :esBecado, :esHijoMaestro, :esRepitente, :fechaNacimiento, :genero, :lugarNacimiento, :mano, :municipio, :nacionalidad, :nombres, :pais, :religion, :retirado, :rne
end
