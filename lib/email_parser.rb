# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
    attr_accessor :emails

    def initialize(emails)
        @emails= emails
    end

    def parse
        parsed_emails =[]
        @emails.split(/[ ,]/).map{|email| parsed_emails << email.strip}
        parsed_emails.uniq.select{|email| email!=""}
    end

end
