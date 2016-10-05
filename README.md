# mcec - Curriculum Vitae in LaTex

mcec is a template for a Curriculum Vitae based on [Twenty Seconds Curriculum Vitae in LaTex](https://github.com/spagnuolocarmine/TwentySecondsCurriculumVitae-LaTex)

### Build requirements

LaTex installation with following additionals packages:

	- Lato, fontenc
	- tikz
	- xcolor
	- textpos
	- ragged2e
	- parskip
	- fontawesome

### Profile environment

These are the command to set up the profile information.

- `\profilepic{paht_name}`: set up the image profile.

- `\name{your name}`: set up your name.

- `\job{your actual job position}`: et up your actual job position.

- `\date{date}`: set up your date of birth.

- `\address{address}`: set up your address.

- `\phones{{phone number},{phone number}}`: set up your telephone numbers.

- `\emails{{email address},{email address}}`: set up your email addresses.

- `\site{home page address name}{link}`: set up your personal home page (two argument: short address and complete link).

- `\linkedin{link}`: set up your linkedin profile.

- `\github{link}`: set up your github profile.

- `\twitter{link}`: set up your twitter profile.

- `\about{brief description}`: set up a brief description of you.

- `\languages{{name_lang/descr}, {name_lang/descr}}`: set up the languages. Each language must is a couple *{name/value}*, where the value is a description.

- `\skills{{name_skill},{name_skill}}`: set up the skills. Each skill will must is in form *{name_skill}*.

- `\makeprofile`: creates the profile.

### Body environment

The body document part is composed by sections.

#### Sections
		
- `\section{section name}`: set up a new section in the body part.

#### Lists

There are three types of list items.

##### mcec long list

intends a list of detailed information with five part

	(1) job position / title of school
	(2) company name / school course
	(3) date
	(4) location
	(5) description

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

##### mcec normal list

intends a list of information with four part: 

	(1) title of certificate
	(2) link
	(3)	code
	(4) date

```
\begin{mcecnlist}
  \nitem
    {title certificate}
    {link}
    {code}
    {date}
\end{mcecnlist}
```

#### mcec short list

intends a list of few information with two part: 

	(1) date
	(2) title 
	
```
\begin{mcecslist}
  \sitem
    {date}
    {title}
\end{mcecslist}
```

### Other commands

There are other command: 

- `\flag{text}`: enables to wrap the text in grey box.

- `\largeflag{text}`: as *\flag* with large font.

- `\round{text}`: enables to wrap the text in oval shape (it is included in `\flag` command).

