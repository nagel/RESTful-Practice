class Api::PeopleController < ApplicationController

  def index
    @people = Person.all
    render "index.json.jbuilder"
  end 

  def show
    @person = Person.find_by(id: params["id"])
    #@updated_at = @person.updated_at 
    render "show.json.jbuilder"
  end 

  def create
    @person = Person.new(
      first_name: params["first"],
      last_name: params["last"],
      middle_name: params["middle"],
      phone_number: params["phone_number"],
      bio: params["bio"])
    @person.save

    render "show.json.jbuilder" 
  end 

  def update
    @person = Person.find_by(id: params["id"])
    @person.update(
      first_name: params["first"] || @person.first_name,
      last_name: params["last"] || @person.last_name,
      middle_name: params["middle"] || @person.middle_name,
      phone_number: params["phone_number"] || @person.phone_number,
      bio: params["bio"] || @person.bio
      )

    render "show.json.jbuilder"
  end 

  def delete
    @person = Person.find_by(id: params["id"])
    @ref = @person.first_name
    @person.destroy

    render json: {message: "#{@ref} has been deleted from the database!"}
  end 

end
