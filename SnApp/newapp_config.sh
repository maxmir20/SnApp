#!/bin/bash

####directory information: please post the paths to the folders/directories you would like to use

#The home directory is where you will be creating job application folders
home_directory="/Users/name/Documents/JobApplicationFolder"

#The template directory is where your resume/cover letter template files are located. It is recommended
#that you store your template directory in the same directory as your home so that you can easily access it.
templates_directory="$home_directory/templates"

#The following file paths are where you specify the resume and cover letter that will be used to clone. 
#You can set a general template that will be used if you don't specify a type of application, or you can indicate
#type-specific files path
#
#It is recommended that you rename your templates so that there are no ' ' spaces in the file path

#Default file paths (for when no type is entered)
def_resume_path="$templates_directory/Resume_Spring_2020.pdf"
def_cover_letter_path="$templates_directory/Cover_Letter_Template.docx"

#Example: Product Management path (optional), rename variables and paths appropriately
pm_resume_path="$templates_directory/PM_Resume_Fall_2020.docx"
pm_cover_letter_path="$templates_directory/PM_SaaS_Cover_Letter_Template.docx"

#Example: Software Engineering path (optional), rename variables and paths appropriately
se_resume_path="$templates_directory/SE_Resume_Fall_2020.docx"
se_cover_letter_path="$templates_directory/PM_SaaS_Cover_Letter_Template.docx"

#(Optional) Your path here
your_path=