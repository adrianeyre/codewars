=begin

Email addresses are notoriously difficult to validate.

Create a method that takes an email and returns true if valid, false otherwise.

Tip: It doesn't have to be perfect.

For example:

validate('joe@example.com') => true
validate('joe') => false
Here's tool that may help: http://rubular.com/

=end

# My Soltion
def validate(email)
  email =~ /^.*@.*.[.]...$/ ? true : false
end

# Better Solution
def validate(email)
  /^.+@.+\..+$/ === email
end
