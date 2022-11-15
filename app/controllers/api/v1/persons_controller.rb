class Api::V1::PersonsController < ApplicationController
  def index
    persons = Person.all
    render json: persons, status:200
  end

  def show
    person = Person.find_by(id: params[:id])
    if person
      render json: person, status:200
    else
      render json: {error: "Not Found"}
    end
  end
end
