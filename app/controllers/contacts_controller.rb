class ContactsController < ApplicationController
    def index
        @contacts=Contact.all
    end

    def show
        @contact=Contact.find(params[:id])
    end

    def new
        @contact=Contact.new
    end

    def create
        Contact.create(contact_params)
        redirect_to contacts_url
    end

    def edit
        @contact=Contact.find(params[:id])
    end

    def update
        @contact=Contact.find(params[:id])
        @contact.update(contact_params)
        redirect_to contacts_url
    end

    def destroy
        @contact=Contact.find(params[:id])
        @contact.destroy
        redirect_to contacts_url
    end

    private
    def contact_params
        params.require(:contact).permit(:name,:number)
    end
end
