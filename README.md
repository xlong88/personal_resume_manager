# personal resume manager (PRM)

## What is PRM ?
PRM is a simple but useful python package to manage multiple versions of your resumes.

## Who needs PRM ?
Those who are applying jobs, interns, and PhD (or master) and do not want to make the resume somehow specific for the corresponding target. For example, you are applying two different types of interns of two different companies, if you use the same resume, you will definitely lose some advantage. Therefore, multiple versions of resumes are needed, however, they are not totally different, which means they have some common contents, some different contents. If you are encountering such a situation, then PRM proves you a simple but useful solution. YOU NEED IT!!

## How PRM work ?
PRM is based on the template engine [Jinja2](http://jinja.pocoo.org/), whose basic idea is inspired by django. The basic idea is similar to the [Model–view–controller (MVC) pattern](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller). Specifically, we will have a template file (e.g., a TEX file), in which common contents are hard-coded, and different contents are programming-controlled. And we use a "configuration" file (e.g., a JSON/XML file or even a database) to specify the different parts. Of course, you also need a "control" file (in PRM, it is a python file) to apply the configuration to the template, eventually generating multiple version of resumes as you want.

## How to use it ?

### Prerequisite

+ Software
    * [PYTHON 2.7](https://www.python.org/)
    * [LaTex](https://www.latex-project.org/) 
+ Software packages
    * [Jinja2](http://jinja.pocoo.org/)

### Supported OSes

+ Windows
+ Linux
+ OS X


### Usage

```shell
Usage:

usage: prm.py [-h] [-t TEMPLATE] [-s SEARCHPATH] [-i INPUT] [-d DIRECTORY]
              [-o OUTPUT]

usage of personal resume manager (prm)

optional arguments:
  -h, --help            show this help message and exit
  -t TEMPLATE, --template TEMPLATE
                        template filename (if there is only one tex file in
                        your search path, you can choose to omit this input
                        parameter, otherwise, you have to specify it)
  -s SEARCHPATH, --searchpath SEARCHPATH
                        the absolute path where templates can be found,
                        omitting this input parameter indicating that the
                        search path is the current directory
  -i INPUT, --input INPUT
                        input variables to the template as a json file (if
                        there is only one tex file in your search path, you
                        can choose to omit this input parameter, otherwise,
                        you have to specify it)
  -d DIRECTORY, --directory DIRECTORY
                        the absolute path of the folder, where you want to
                        PDF(s) to be stored, omitting this input parameter
                        indicating that the search path is the current
                        directory (it would create a subfolder for each PDF)
  -o OUTPUT, --output OUTPUT
                        the filename template for the output PDFs, omitting it
                        means you want to the template filename as the prefix
                        of the PDF filenames
```

## Notice

If you encounter any problems while using PRM, or you have any suggestions to improve it, feel free to contact me (mr.gonglong@outlook.com).


