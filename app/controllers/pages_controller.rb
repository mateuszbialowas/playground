# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    render 'pages/home', locals: { employees: Employee.first(10) }
  end
end
