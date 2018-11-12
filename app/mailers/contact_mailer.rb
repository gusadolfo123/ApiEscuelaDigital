class ContactMailer < ApplicationMailer
    
    layout 'contact'
        
    def new_message(email, fullName, subject, content)
        @fullName = fullName
        @content = content
        mail(to: "gusadolfo123@hotmail.com", subject: subject)
    end 

end
