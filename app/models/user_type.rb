class UserType < ApplicationRecord
    has_many :userpersons
    # Para validar que el atributo es NOT NULL
    validates_presence_of :user_type_name
    # Para validar que un atributo sea unico
    validates_uniqueness_of :user_type_name
end
