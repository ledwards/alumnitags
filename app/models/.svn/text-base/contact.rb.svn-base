class Contact < ActiveRecord::Base
  acts_as_taggable
  
  validates_presence_of :first_name, :last_name, :email
  accepts_nested_attributes_for :tags, :allow_destroy => true
  
  def self.get_forward_recipients(recipients)
    tags = []
    forward_recipients = []
    re = RegExp.new('(.+)@')   # all characters preceding the @ symbol
    
    recipients.each do |recipient|
      tags << re.match(recipient).captures.first 
    end
    
    Contact.find_tagged_with(tags).each do |contact|
      forward_recipients << contact.email
    end
    
    return forward_recipients
    
  end
end
