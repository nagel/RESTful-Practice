class Api::PeopleController < ApplicationController

  def index
    @people = Person.all
    render "index.json.jbuilder"
  end 

  def show
    @person = Person.find_by(id: params["id"])
    render "show.json.jbuilder"
  end 

  def create
    @person = Person.new(
      first_name: params["first"],
      last_name: params["last"],
      phone_number: params["phone_number"])
    @person.save

    render "show.json.jbuilder" 
  end 

  def update
    @person = Person.find_by(id: params["id"])
    @person.update(
      first_name: params["first"] || @person.first_name,
      last_name: params["last"] || @person.last_name,
      phone_number: params["phone_number"] || @person.phone_number
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
