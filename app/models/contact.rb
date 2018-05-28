class Contact < MailForm::Base
	attribute :name,		:validates => true
	attribute :email,		:validates => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
	attribute :phone,		:validates => true
	attribute :message,	:validates => true

	def headers 
		{
			:subject => "Contact",
			:to => "calvin8313@hotmail.fr",
			:from => %("#{name}" <#{email}>)
		}
	end
end