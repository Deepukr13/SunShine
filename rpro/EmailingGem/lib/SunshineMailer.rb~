require 'mail'
 class SunshineMailer

    def self.contactDonor(userEmail,emailSubject,emailBody)

     @emailSubject = emailSubject
     @emailBody = emailBody

    options = { :address              => "smtp.gmail.com",
                :port                 => 587,
                :domain               => 'your.host.name',
                :user_name            => 'nciwebmail13@gmail.com',
                :password             => 'rubyonrails',
                :authentication       => 'plain',
                :enable_starttls_auto => true  }



    Mail.defaults do
      delivery_method :smtp, options
    end
	

    Mail.deliver do
      from 'nciwebmail13@gmail.com' 
      to userEmail     
      subject emailSubject
      body emailBody
    end
    
	
  end
  
end
