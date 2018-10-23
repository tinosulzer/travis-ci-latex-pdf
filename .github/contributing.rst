How to update a certain method
------------------------------

The steps below clarify what you should think of when you update a certain method.

#. Fork the GitHub repo.
#. If you only change documentation and not code, you probably can just change and submit a pull request.
#. If you change code, you can test your changes on Travis by copying the necessary files from the `x-method-name` folder to top level, changing the `.travis.yml` and pushing (to your fork).
#. You should be able to view the Travis build for your fork on `travis-ci.org <https://travis-ci.org>`_.
#. If it works, update the files in the `x-method-name` folder.
#. If needed, update the documentation in the readme, including advantages/disadvantages at the beginning.
#. Also update the test code for the method in the `test/` folder.
#. Revert the main `.travis.yml` file for this repo back to the state like it is on master, such that it runs all the tests.
#. Push and check if the Travis build succeeds.
#. If so, create a pull request - thanks for all the work!

How to add your own method
--------------------------

The steps below clarify what you should think of when you add your own method to build LaTeX on Travis (or possibly other CI services).
You also might want to add it as an answer at `tex.stackexchange.com <https://tex.stackexchange.com/questions/398830/how-to-build-my-latex-automatically-using-travis-ci>`_.

#. Fork the GitHub repo.
#. Create a folder like `x-method-name` to put all the necessary files in like `.travis.yml` and possibly other files. This method may be inserted inbetween other methods, you can renumber them.
#. Test your changes on Travis by copying the necessary files from the `x-method-name` folder to top level, changing the `.travis.yml` and pushing (to your fork). You can test compiling all LaTeX files present in the `src/` folder, you also can of course create new test files.
#. You should be able to view the Travis build for your fork on `travis-ci.org <https://travis-ci.org>`_.
#. Add the documentation in the readme, including advantages/disadvantages at the beginning.
#. Also add test code for the method in the `test/` folder.
#. Revert the main `.travis.yml` file for this repo back to the state like it is on master, such that it runs all the tests including the one you just created.
#. Push and check if the Travis build succeeds.
#. If so, create a pull request - thanks for all the work!


