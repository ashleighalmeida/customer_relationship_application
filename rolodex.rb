class Rolodex

	def initialize
		@contacts = []
		@id = 1000
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end

	def find(contact_id)
		@contacts.find do |contact|
			contact.id == contact_id 
	end
	

	def modify_contact(contact_id)
	end

	def display_all_contacts
		@contacts.each do |contact|
			puts contact
	end

	def display_particular_contact
	end

	def display_info_by_attribute
	end

	def delete_contact(contact_id)
		@contacts.delete_if do |contact|
			contact.id == contact_id
	end

end
