class PostMailer < ActionMailer::Base
    
    
    def post_created(user)
        mail(to: user.email,
             from: "services@mydomain.com",
             subject: "Post Created",
             body: "Ovo je moj prvi mailer"
             )
    end
end