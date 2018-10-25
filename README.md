Role Name
=========

This role should only define some variables that can be reused across
various playbooks in order to make cross py2-py3 compatibility easier to
deal with.

Role Variables
--------------

For convenience variables will be names based on their original command
name, making it easier to read the code.

Exceptions:

- dashes are converted to underlines
- pkg_mgr is used for platform package manager as there is no "original"

- ``python``: python2 or python3 based on platform (without path!)
- ansible_playbook: ansible-playbook or ansible-playbook-3
- ``pip``: pip, pip2 or pip3
- ``virtualenv``: virtualenv, virtualenv-3, "python -m virtualenv", or
  anything that would work to call it.
- ``pkg_mgr``: almost the same as ansible_pkg_pkg but one that adds some extra
  commands that make it easy and safe, "-y" being an implicit one.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in
regards to parameters that may need to be set for other roles, or variables that
are used from other roles.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: ansible-six }

License
-------

BSD
