class UserPerson < ApplicationRecord
    belongs_to :usertpye
    # Para validar que el atributo es NOT NULL
    validates_presence_of   :doc_id, 
                            :doc_issue_date, 
                            :doc_expiration_date,
                            :user_name,
                            :email,
                            :phone_number1,
                            :fk_user_type_id
    # Para validar que un atributo sea unico
    validates_uniqueness_of :doc_id, 
                            :user_name, 
                            :email, 
                            :phone_number1, 
                            {message: 'El registro con el valor: %{value} ya existe'}
end
