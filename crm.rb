require_relative "contact"
require_relative "rolodex"

class CRM 

	def self.run
		my_crm = CRM.new
		my_crm.main_menu
	end

	def initialize
		@rolodex = Rolodex.new
	end

	def print_main_menu
		puts "[1] Add new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "Enter a selection"
	end

	def main_menu
		while true 
			print_main_menu
			selection = gets.chomp.to_i
			call_selection(selection)
		end
	end

	def call_selection(selection)
		add_new_contact if selection == 1
		modify_contact if selection == 2
		delete_contact if selection == 3
		display_contact if selection == 4
		display_by_attribute if selection == 5
		delete_selection if selection == 6
	end

	def add_new_contact
		print "First name:"
		first_name = gets.chomp
		print "Last name:"
		last_name = gets.chomp
		print "Email:"
		email = gets.chomp
		print "Note:"
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
		rolodex.add_contact(contact)
		main_menu
	end

	def modify_contact
		puts "Enter id of user you would like to modify:"
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact)
		puts "Modify #{contact}? Type Y or N to continue"
		answer = gets.chomp
		if answer == "Y"
			modification_menu
		end
		elsif answer == "N"
			main_menu
		end
	end

	def modification_menu
		puts "Which attribute would you like to modify?"
		puts "[1] First name"
		puts "[2] Last name"
		puts "[3] Email"
		puts "[4] Notes"
		end

	def modication_selection(selection)
		if selection == 1
		puts "First name:"
		modifname = gets.chomp
		rolodex.add_contact(modifname)
		if selection == 2
		puts "Last name:"
		modifnamel =  gets.chomp
		rolodex.add_contact(modifnamel)
		if selection == 3
		puts "Email:"
		modifemail = gets.chomp
		rolodex.add_contact(modifemail)
		if selection == 4
		puts "Notes:"
		modifnotes = gets.chomp
		rolodex.add_contact(modifnotes)
	end

	# ^ I am aware how bad that is


	def delete_contact
		puts "Enter id of user you would like to remove:"
		delete_id = gets.chomp.to_i
		deletion = @rolodex.find(deletion)
		puts "{#deletion} has been removed"
		# or puts "Deleted."
		main_menu
		end

	def display_contacts
		rolodex.display_all_contacts
		main_menu
		end

	def display_attribute
		puts "Enter id of user you would like to view:"
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact)
		puts contact
		main_menu
		end

	def exit
		puts "CTRL + C"
		exit
end
end

CRM.run