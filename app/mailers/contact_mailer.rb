class ContactMailer < ApplicationMailer
    
    layout 'contact'
        
    def new_message(email, fullName, subject, content)
        @email =     email
        @fullName = fullName
        @content = content
        mail(to: email, subject: subject)
    end 

end
