# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    render 'pages/home', locals: { employees: Employee.all }
  end
end
