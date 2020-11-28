#!/bin/bash

####directory information: please post the paths to the folders/directories you would like to use

#The home directory is where you will be creating job application folders
home_directory="/Users/maxingraham-rakatansky/Documents/MIMS/19-20/Applications"

#The template directory is where your resume/cover letter template files are located
templates_directory="$home_directory/templates"

#The following file paths are where you specify the resume and cover letter that will be used to clone. 
#You can set a general template that will be used if you don't specify a type of application, or you can indciate
# type specific files path
#


#Default file paths (for when no type is entered)
def_resume_path="$templates_directory/PM_Resume_Fall_2020.docx"
def_cover_letter_path="$templates_directory/PM_SaaS_Cover_Letter_Template.docx"

#(Optional) Product Management path
pm_resume_path="$templates_directory/PM_Resume_Fall_2020.docx"
pm_cover_letter_path="$templates_directory/PM_SaaS_Cover_Letter_Template.docx"

#(Optional) Software Engineering path
se_resume_path="$templates_directory/SE_Resume_Fall_2020.docx"
se_cover_letter_path="$templates_directory/PM_SaaS_Cover_Letter_Template.docx"

#(Optional) Your path here
your_path=