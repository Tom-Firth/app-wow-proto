class PersonnagesController < ApplicationController

  def index
    @persos = Personnage.all
  end
end
