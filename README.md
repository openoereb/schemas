# Schema files for the OEREB cadaster

This is a mirror to keep track of the [schema files](https://schemas.geo.admin.ch/V_D/OeREB/) in their
different versions. It contains the different branches:

- [master](https://github.com/openoereb/schemas) => always the most recent
- [0_9](https://github.com/openoereb/schemas/tree/0_9)
- [1_0](https://github.com/openoereb/schemas/tree/1_0)
- [2_0](https://github.com/openoereb/schemas/tree/2_0)

To update content the following steps are necessary:

1. `git clone https://github.com/openoereb/schemas.git`
2. `cd schemas`
3. choose the correct branch `git checkout 2_0`
4. use make to download files `make clean download`
5. CHECK IF FILES ARE CORRECT (sometimes errors while download popin up)
6. `git add .`
7. `git commit . -m "downloaded newest version"`
8. `git push`
9. create a pull request (NOT on master)
10. after merge into the feature branch don't forget to draft a release!

To integrate a new version like 3.0 etc:

1. `git clone https://github.com/openoereb/schemas.git`
2. `cd schemas`
3. choose the correct branch `git checkout -b 3_0`
4. update `Makefile` to have the correct URL and files to download
5. use make to download files `make clean download`
5. CHECK IF FILES ARE CORRECT (sometimes errors while download popin up)
6. `git add .`
7. `git commit . -m "downloaded newest version"`
8. `git push`
9. create a pull request (ON master)
10. after merge into the master branch don't forget to draft a release!

Note:

Project on github is setup to protect all branches fitting the pattern `[0-9]_[0-9]`. So feature branches will be set
automatically and won't be deleted.
