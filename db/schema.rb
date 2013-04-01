# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130401054242) do

  create_table "alumnos", :force => true do |t|
    t.string   "IdFamilia"
    t.string   "EscuelaProviene"
    t.string   "rne"
    t.string   "nombres"
    t.string   "apellido1"
    t.string   "apellido2"
    t.date     "fechaNacimiento"
    t.string   "genero"
    t.string   "mano"
    t.string   "lugarNacimiento"
    t.string   "departamento"
    t.string   "municipio"
    t.string   "nacionalidad"
    t.string   "pais"
    t.string   "religion"
    t.string   "colonia"
    t.string   "avenida"
    t.string   "calle"
    t.string   "casa"
    t.boolean  "esRepitente"
    t.boolean  "esBecado"
    t.boolean  "esHijoMaestro"
    t.boolean  "retirado"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "bingos", :force => true do |t|
    t.string   "lectivo"
    t.string   "rne"
    t.string   "recibo"
    t.date     "fechapago"
    t.decimal  "montopago",   :precision => 10, :scale => 0
    t.string   "posteadopor"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "cursos", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "tipo"
    t.string   "codigo_siguiente_curso"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "disciplinas", :force => true do |t|
    t.string   "lectivo"
    t.string   "rne"
    t.date     "fechaSancion"
    t.text     "motivoSancion"
    t.string   "maestroSancion"
    t.boolean  "firmaSancion"
    t.string   "tipoDisciplina"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "familias", :force => true do |t|
    t.string   "codigo"
    t.string   "familia"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "generales", :force => true do |t|
    t.string   "lectivoActual"
    t.string   "idsistema"
    t.string   "noPlanOcci"
    t.string   "cobrazaOcci"
    t.string   "nombreArchivoOcci"
    t.string   "bimestreActual"
    t.boolean  "notasweb"
    t.boolean  "tieneBingo"
    t.boolean  "tienePapeleria"
    t.boolean  "boletaImpresa"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "lectivos", :force => true do |t|
    t.string   "codigo"
    t.string   "slogan"
    t.integer  "valor1p"
    t.integer  "valor2p"
    t.integer  "valor3p"
    t.integer  "valor4p"
    t.integer  "valor_aprobado"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "maestros", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "nombre"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materias", :force => true do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.string   "nivel"
    t.string   "orden"
    t.string   "materiaTipo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
