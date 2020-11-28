#!/bin/bash


if [[ $# != 0 ]]; then

    ### Sources directory paths from config files. 
    source newapp_config.sh

    companyname="$1"
    companyname="$(tr '[:lower:]' '[:upper:]' <<< ${companyname:0:1})${companyname:1}"
    if [[ $# = 2 ]]; then
        type="$2"
    else
        type="def"
    fi

    ### Define Naming Conventions


    #set name convention of new file name
    type_conv=
    if [[ $type != "def" ]]; then
        type_conv=$(printf "%s" "$2" | tr '[:lower:]' '[:upper:]')
        type_conv="_${type_conv}"
    fi
    newfilename="$companyname$type_conv"

    # set chronology convention of new file name
    month=$(date +"%m")

    semester=

    if [[ $month -lt 6 ]]; then
        semester="Spring"
    else 
        semester="Fall"
    fi

    year=$(date +"%Y")

    newfiledate="_${semester}_$year"

    #evaluate if directory for company name exists. If not, create one
    if ! [ -d $home_directory/$companyname ]; then
        echo "No directory for this company, making one now"
        mkdir $home_directory/$companyname
    fi
    company_folder_path="$home_directory/$companyname"

    #counts how many versions we have in this folder already
    type_count=
    for f in $company_folder_path/*; do
        if [[ $f == *"$newfilename"* ]]; then
            ((type_count=type_count + 1))
        fi
    done

    #set ending type of file (if necessary)
    newfilenumbering=
    if [[ $type_count > 0 ]]; then
        newfilenumbering="_$(( type_count / 2))"
    fi

    
    #set new file names to copy over
    newresumename="${newfilename}_Resume${newfiledate}$newfilenumbering"
    newcoverlettername="${newfilename}_Cover_Letter${newfiledate}$newfilenumbering"
   
    resume_check=${type}_resume_path
    cover_letter_check=${type}_cover_letter_path
    resume_exists="${!resume_check:-false}"
    cover_letter_exists="${!cover_letter_check:-false}"

    if [[ $resume_exists != "false" ]]; then
        resume="${!resume_check}"
        resume_doc_type="${resume#*.}"
        cp $resume $company_folder_path/$newresumename.$resume_doc_type

        if [[ $cover_letter_exists != "false" ]]; then
            cover_letter="${!cover_letter_check}"
            coverletter_doc_type="${cover_letter#*.}"
            cp $cover_letter $company_folder_path/$newcoverlettername.$coverletter_doc_type
        fi

        # cp $resume $company_folder_path/$newresumename.$resume_doc_type
        # cp $cover_letter $company_folder_path/$newcoverlettername.$coverletter_doc_type
    
        echo "success"
    else
        echo "The type you are passing in does not match the name of your (type)_resume_path variable. Please update your config file variables"
    fi
        
    
else
    echo "You do not have the appropriate number of arguments to call this script"
fi

