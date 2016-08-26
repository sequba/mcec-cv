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
		- parskip
		- fontawesome

###Profile environment
These are the command to set up the profile information.

* Set up the image profile.
 	
		\profilepic{paht_name}
* Set up your name.
	
		\cvname{your name}
* Set up your actual job position.
	
		\cvjobtitle{your actual job position}
* Set up your date of birth.
	
		\cvdate{date}	
* Set up your address.
	
		\cvaddress{address}		
* Set up your telephone number.
	
		\cvnumberphone{phone number}
* Set up your email.
	
		\cvmail{email address}
* Set up your personal home page (short address).
 	
		\cvsitename{home page address}
* Set up your personal home page (complete address).
	
		\cvsiteaddress{home page address}

* Set up a brief description of you.
	
		\about{brief description}
* Set up the languages. Each language must is a couple `{name/value}`, where the value is a description.
	
		\languages{{name_language/description}, {name_language/description}}
* Set up the skills. Each skill will must is in form `{name_skill}`.
	
		\skills{{name_skill},{name_skill}}

To create the profile use the command:

	\makeprofile

###Body environment
The body document part is composed by sections.
In the sections you can put three kinds of list items.

The first (_mcec long list_) intends a list of detailed information with five part: **(1) job position / title of school** -- **(2) company name / school course** -- **(3) date** -- **(4) location** -- **(5) description**. 

The second (_mcec normal list_) intends a list of information with three part: **(1) title of certificate** -- **(2) code** -- **(3) date**.

The third (_mcec short list_) intends a list of few information with two part: **(1) date** -- **(2) title**. 

#### Sections
* Set up a new section in the body part.
		
		\section{section name}


#### mcec long list
```
\begin{mcecllist}
  \litem
    {job position}
    {company name}
    {date}
    {location}
    {description}
\end{mcecllist}
```
#### mcec normal list
```
\begin{mcecnlist}
  \nitem
    {title certificate}
    {code}
    {date}
\end{mcecnlist}
```
#### mcec short list
```
\begin{mcecslist}
  \sitem
    {date}
    {title}
\end{mcecslist}
```

###Other commands
There are other command: 

* `\flag` that enable to wrap the text in grey box.

		\flag{text}
* `\largeflag` do the same with large font.

		\largeflag{text}	
* `\round` that enables to wrap the text in oval shape (it is included in `\flag` command).

		\round{text}	