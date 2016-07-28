API for Unaccompanied Children database
=============================

Unaccompanied children apprehended by the Department of Homeland Security (DHS) immigration officials are transferred to the care and custody of Office of Refugee Resettlement (ORR). ORR promptly places an unaccompanied child in the least restrictive setting that is in the best interests of the child, taking into consideration danger to self, danger to the community, and risk of flight. ORR takes into consideration the unique nature of each child’s situation and incorporates child welfare principles when making placement, clinical, case management, and release decisions that are in the best interest of the child.

More info: `www.acf.hhs.gov/orr/programs/ucs`

.. _`www.acf.hhs.gov/orr/programs/ucs`: http://www.acf.hhs.gov/orr/programs/ucs

This repo contains an API for the unaccompanied child database.

Repositories
------------

- API (this repo)
- `Dashboard`

.. _`Dashboard`: https://github.com/18F/hhs-acf-uc-dashboard

hhs_acf_uc_api
------------

.. image:: https://img.shields.io/badge/built%20with-Cookiecutter%20Django-ff69b4.svg
     :target: https://github.com/pydanny/cookiecutter-django/
     :alt: Built with Cookiecutter Django

.. image:: https://travis-ci.org/18F/hhs_acf_uc_api.svg?branch=master
     :target: https://travis-ci.org/18F/hhs_acf_uc_api
     :alt: Build Status

.. image:: https://codeclimate.com/github/18F/hhs_acf_uc_api/badges/gpa.svg
     :target: https://codeclimate.com/github/18F/hhs_acf_uc_api
     :alt: Code Climate

.. image:: https://codecov.io/github/18F/hhs_acf_uc_api/coverage.svg?branch=master
     :target: https://codecov.io/github/18F/hhs_acf_uc_api?branch=master
     :alt: codecov.io


Settings
------------

Moved to settings_.

.. _settings: http://cookiecutter-django.readthedocs.io/en/latest/settings.html

Basic Commands
--------------

Setting Up Your Users
^^^^^^^^^^^^^^^^^^^^^

* To create a **normal user account**, just go to Sign Up and fill out the form. Once you submit it, you'll see a "Verify Your E-mail Address" page. Go to your console to see a simulated email verification message. Copy the link into your browser. Now the user's email should be verified and ready to go.

* To create an **superuser account**, use this command::

    $ python manage.py createsuperuser

For convenience, you can keep your normal user logged in on Chrome and your superuser logged in on Firefox (or similar), so that you can see how the site behaves for both kinds of users.

Test coverage
^^^^^^^^^^^^^

To run the tests, check your test coverage, and generate an HTML coverage report::

    $ coverage run manage.py test
    $ coverage html
    $ open htmlcov/index.html

Running tests with py.test
~~~~~~~~~~~~~~~~~~~~~~~~~~~

::

  $ py.test


Live reloading and Sass CSS compilation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Moved to `Live reloading and SASS compilation`_.

.. _`Live reloading and SASS compilation`: http://cookiecutter-django.readthedocs.io/en/latest/live-reloading-and-sass-compilation.html









Deployment
----------





Docker
^^^^^^

See detailed `cookiecutter-django Docker documentation`_.

.. _`cookiecutter-django Docker documentation`: http://cookiecutter-django.readthedocs.io/en/latest/deployment-with-docker.html





Public domain
=============

This project is in the worldwide `public domain`_.
As stated in `CONTRIBUTING`_:

    This project is in the public domain within the United States, and copyright
    and related rights in the work worldwide are waived through
    the `CC0 1.0 Universal public domain dedication`_.

    All contributions to this project will be released under the CC0 dedication.
    By submitting a pull request, you are agreeing to comply with this waiver
    of copyright interest.

.. _`CC0 1.0 Universal public domain dedication`: https://creativecommons.org/publicdomain/zero/1.0/

.. _`public domain`: LICENSE.md

.. _`CONTRIBUTING`: CONTRIBUTING.md
