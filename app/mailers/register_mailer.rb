class RegisterMailer < ApplicationMailer
    def new_user(user)
        @user = user
        mail(to: @user.email, subject: "Bienvenido a EscuelaDigital")
    end
end
