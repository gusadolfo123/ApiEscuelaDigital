# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
def new_message
        ContactMailer.new_message 'Gusadolfo123@hotmail.com', 'Gustavo Moreno', 'Gusadolfo123@hotmail.com', 'asdasdsad'
    end
end
