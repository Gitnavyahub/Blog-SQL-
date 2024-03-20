class UserMailer < ApplicationMailer
include SendGrid
    def welcome_email
        mail(from: 'nitin.gaurav@reddoorz.com', to: 'navya.bajpai@reddoorz.com' , subject: 'Welcome Reddoorz', cc: 'navyabajpai1110@gmail.com')
end
end