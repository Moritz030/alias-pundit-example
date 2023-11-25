class AdminController < ApplicationController
  def index
    authorize :admin
    @admins = Admin.all
  end
end
