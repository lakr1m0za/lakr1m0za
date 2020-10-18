Role Name
=========

Delete AWS EC2 instances.

Requirements
------------

Currently boto does not support the removal of Managed Policies, the module will error out if your user/group/role has managed policies when you try to do state=absent. They will need to be removed manually.
It`s role for delete AWS EC2 instances.
GL_DO_BC, lecture *, hometask.

Role Variables
--------------



Dependencies
------------



Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------



Author Information
------------------

Artyom Prokhorenko.
