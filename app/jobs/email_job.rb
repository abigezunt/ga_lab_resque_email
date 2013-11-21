module SendBackgroundEmail
	@queue = :default

	def self.perform(from_email, options)
		#Code in here is what happends when this is executed by the worker
		to = options['email_destination']
    subject = options['email_subject']
    body = options['email_body']
		Mail.deliver do
      to to
      from from_email
      subject subject
      body body
    end
	end

end