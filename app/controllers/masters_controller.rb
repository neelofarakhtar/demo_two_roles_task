class MastersController < ApplicationController
  before_action :find_master, only: [:index]

  def index
  @masters =Master.all
  end

  def new
  end

  def create
  end

  def delete
  end

  def find_master
    @master = current_user
  end
end
