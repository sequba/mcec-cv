mcec - Curriculum Vitae in LaTex
=======================================
mcec is a template for a Curriculum Vitae based on [Twenty Seconds Curriculum Vitae in LaTex](https://github.com/spagnuolocarmine/TwentySecondsCurriculumVitae-LaTex)

# Build 
Build requirements:

* LaTex installation. Additionals packages:
		- Lato, fontenc
		- tikz
		- xcolor
		- textpos
		- ragged2e
		- etoolbox
		- ifmtarg
		- ifthen
		- pgffor
		- marvosym
		- parskip

###Profile environment
These are the command to set up the profile information.

* Set up the image profile.
 	
		\profilepic{paht_name}
* Set up your name.
	
		\cvname{your name}
* Set up your job profile.
	
		\cvjobtitle{your job title}
* Set up your date of birth.
	
		\cvdate{date}	
* Set up your address.
	
		\cvaddress{address}		
* Set up your telephone number.
	
		\cvnumberphone{phone number}
* Set up your email.
	
		\cvmail{email address}
* Set up your personal home page.
	
		\cvsite{home page address}
* Set up a brief description of you.
	
		\about{brief description}
* Set up the skills with chart style. Each skill must is a couple `{name/value}`, where the value is a floating point value between `0` and `6`. This is an agreement for the graphics issues, the `0` correspond to a Fundamental awareness while `6` to a Expert awareness level.
	