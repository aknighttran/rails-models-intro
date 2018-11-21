class Contact < ApplicationRecord
  # Associations
  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy

  # Validations
  # confirmation - it should have exact a certain thing ()
  # inclusion - it includes something
  # length - have a certain size
  # numericality - makes sure that the input is a number

  # presence - makes sure the field is filled out
  validates :first_name, :last_name, :age, :phone, :email, :friend, presence: true

  # uniqueness - accept uniqueness 
  validates :email, uniqueness: true 



  # Options
    # allow_nil
    # allow_blank
    # message
    # on
      # validates :email, uniqueness: true, on: :create
      validates :age, numericality: true, on: :update
    #on: :save

  # callbacks
    # calls a method during a certain action

  # before_validation
  # after_validation
  # before_save
  # after_save
  # around_save
  # before_create
  # after_create
  # around_create

  # before_save :encrypt_cc

  # private
  #   def encrypt_cc
  #     self.card_number = bcrypt(self).card_number
  #   end

  # Serialize
    # let us have more than one value for a column in an array


  # Models Methods

  # Class
    # class Person < ActiveRecord::before_save
    #   def self.by_first_name
    #     order(:first_name)
    #   end
    # end
    # Person.by_first_name

  # Instance
    # class Person < ActiveRecord::before_save
    #   def print_full_name
    #     "#{self.first_name} #{self.last_name}" 
    #   end
    # end
    # bob = Person.create(...)
    # bob.print_full_name

end
