class AdminPolicy < UserPolicy
  # this is an example to demonstrate, that calling authorize for the index action will NOT raise an authorization error
  # this is because the index? method in UserPolicy is aliased to the view? method in UserPolicy and not to the view? method in AdminPolicy
  def view?
    false
  end
end
