class UserPolicy < ApplicationPolicy
  def view?
    true
  end

  [:index?, :show?].each do |method_name|
    alias_method method_name, :view?
  end
end
