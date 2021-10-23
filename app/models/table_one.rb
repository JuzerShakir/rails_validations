class TableOne < ApplicationRecord

  # 3rd migration
  # only saves the record when terms attribute has the following values of accept list
  # set allow_nil = false to avoid saving record with nil values
  validates_acceptance_of :terms_of_services, accept: ["abided"], allow_nil: false

  # 4th migration
  # confirmation
  validates :password, confirmation: { case_sensitive: false } # default is true
  # creates virtual attribute, this validation only triggers if value is not nil
  validates :password_confirmation, presence: true

  #5th migration
  # give a list of values that it should accept
  validates :login_source, inclusion: %w(google github)

  #6th mmigration
  # format helps use regexp to accept valid email
  #validates :email, format: /\A\w+\.?\w*\@{1}[a-z]+\.{1}[a-z]+\z/i

  validates :password, length: { minimum: 6, maximum: 36}
  # or
  validates :password, length: { in: 6..36}

  # 7th migration
  validates :aadhar_id, length: { is: 12 }

  # 8th migration
  validates :year, numericality: { only_integer: true }, length: { is: 4 }
  validates :email, uniqueness: {scope: :year}

  # 1st way to not accept specific email services
  validates_each :email do | record, attr, value |
    # extracts email service
    service = value.match(/\A\w+\.?\w*\@{1}([a-z]+)\.{1}[a-z]+\z/).to_a[1]
    record.errors.add(attr, "#{service} email service is not allowed!") if service.in? %w(yahoo msn aol hotmail)
  end

  # 2nd way using exclusion and custom method
  # 9th migration
  def email_service
    self.email_service = self.email.match(/\A\w+\.?\w*\@{1}([a-z]+)\.{1}[a-z]+\z/).to_a[1]
  end
  validates :email_service, exclusion: %w(yahoo msn aol hotmail)
end
