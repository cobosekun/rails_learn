class GoodbyeController < ApplicationController
  def goodbye
    render html: "Goodbye, World!"
  end
end
