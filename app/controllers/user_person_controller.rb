class UserPersonController < ApplicationController

    def search_user
        @users = UserPerson.all
        # @users = ActiveRecord::Base.connection.execute ("SELECT search_user();")
    end

    def list_user
        @users = UserPerson.find(params[:user_id])
    end

    def new
        @users = UserPerson.new
        @usertypes = UserType.all
    end

    def create_user
        @users = UserPerson.new(user_person_params)

        if @users.save
            redirect_to :action => 'list_user'
         else
            @usertypes = UserType.all
            render :action => 'new'
         end

    end

    def edit_user
        @users = UserPerson.find(params[:user_id])
        @usertypes = UserType.all
    end

    def update_user
        @users = UserPerson.find(params[:user_id])

        if @users.update_attributes(user_person_params)
            redirect_to :action => 'search_user', :user_id => @user
         else
            @usertypes = UserType.all
            render :action => 'edit_user'
         end 

    end

    def delete_user
        UserPerson.find(params[:user_id]).destroy
        redirect_to :action => 'list_user'
    end


end


def user_person_params
    params.require(:userpersons).permit(:doc_id, 
                                        :doc_issue_date, 
                                        :doc_expiration_date,
                                        :user_name,
                                        :email,
                                        :phone_number1,
                                        :fk_user_type_id)
 end
