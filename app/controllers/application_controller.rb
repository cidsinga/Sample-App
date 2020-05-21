class ApplicationController < ActionController::Base
  def hello
    render html: "hellow world!"
  end
end
