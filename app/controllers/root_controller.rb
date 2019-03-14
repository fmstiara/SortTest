class RootController < ApplicationController
  def index
    @users = User.all
  end

  def sort
    sortValue = params["sortValue"]

    if sortValue == "high"
      users = User.order(age: "DESC")
    elsif sortValue == "low"
      users = User.order(age: "ASC")
    else
      users = User.all
    end

    render json: users
  end
end
