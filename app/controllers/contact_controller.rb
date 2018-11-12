class ContactController < ApplicationController
  # GET /contact
  def index
    ContactMailer.new_message(params[:email], params[:fullName], params[:subject], params[:content]).deliver_now
  end
end
