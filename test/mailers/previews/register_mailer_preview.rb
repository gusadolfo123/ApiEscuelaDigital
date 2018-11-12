# Preview all emails at http://localhost:3000/rails/mailers/register_mailer
class RegisterMailerPreview < ActionMailer::Preview
    def new_user
        RegisterMailer.new_user User.new(firstName: 'Gustavo', lastName: 'Moreno', email: 'Gusadolfo123@hotmail.com')
    end
end
