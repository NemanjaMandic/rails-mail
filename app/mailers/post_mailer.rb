class PostMailer < ActionMailer::Base
    
    
    def post_created(user)
        mail(to: user.email,
             from: "services@gmail.com",
             subject: "Post Created",
             body: "Ovo je moj prvi mailer"
             )
    end
end