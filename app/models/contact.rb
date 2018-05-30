class Contact < MailForm::Base
	attribute :name,		:validate => true
	attribute :email,		:validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :phone,		:validate => true
	attribute :message,	:validate => true

	def headers 
		{
			:subject => "Contact Form",
			:to => "calvin8313@hotmail.fr",
			:from => %("#{name}" <#{email}>)
		}
	end
end