class Api::PeopleController < ApplicationController

  def index
    @people = Person.where(user_id: current_user.id) #Will only query for users assigned to their user_id

    #allows user to search for a specific first name
    @first_name_search = params["fname"]
    @search = params["search"]

    if @first_name_search
      @people = @people.where("first_name ILIKE ?", "#{@first_name_search}")
    end 

    if @search
      @people = @people.where("first_name LIKE ? OR last_name LIKE ?", "@{search}" "@{search}")
    end

    if current_user
      render "index.json.jbuilder"
    else
      render json: {message: "PLEASE LOGIN!"}
    end 
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
      email: params["email"],
      bio: params["bio"])

    if @person.save
      render "show.json.jbuilder" 
    else
      render json: {message: @person.errors}, status: 404
    end

  end

  def update
    @person = Person.find_by(id: params["id"])
    @person.update(
      first_name: params["first"] || @person.first_name,
      last_name: params["last"] || @person.last_name,
      middle_name: params["middle"] || @person.middle_name,
      phone_number: params["phone_number"] || @person.phone_number,
      email: params["email"] || @person.email,
      bio: params["bio"] || @person.bio
      )

    if @person.save
      render "show.json.jbuilder" 
    else
      render json: {message: @person.errors}, status: 404
    end 

  end 

  def delete
    @person = Person.find_by(id: params["id"])
    @ref = @person.first_name
    @person.destroy

    render json: {message: "#{@ref} has been deleted from the database!"}
  end 

end
