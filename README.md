# README

this is a demo rails app, to demonstrate a problem occuring using alias_method in the wrong way.
after pulling the app, run rails c, create 2 Admin database entries by Admin.create!
run rails s and visit http://localhost:3000/admin
you should be able to see the IDs of the 2 admin records created.

if you have a look at app/policies/admin_policy.rb you will see, that there is a method view? which always returns false.
AdminPolicy class inherits from UserPolicy class:
in app/policies/user_policy.rb you can see that there is a view? method that always returns true. index? and show? are alias methods for view? method

in app/controllers/admin_controller.rb you can see that we call authorize :admin inside the index action. the behaviour of pundit is, that it will look up the index? method in the related AdminPolicy:
the index? method is aliased to the view? method of the UserPolicy, not to the view? method of the AdminPolicy !!!
therefor no authorization error is raised.