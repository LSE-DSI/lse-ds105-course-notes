# DS105 - Data for Data Scientists

[Quarto project](https://quarto.org/docs/projects/quarto-projects.html) containing Course Notes for DS105, updated on the Summer of 2022.

## 🔧 How to build the course website

1. Install [VSCode](https://code.visualstudio.com/download)

2. Install [Quarto extension for VSCode](https://marketplace.visualstudio.com/items?itemName=quarto.quarto)

3. Open the terminal to a directory of your choice and clone the project
```console
git clone git@github.com:LSE-DSI/lse-ds202-course-notes.git
```

4. Open the project on VSCode (File -> Open Folder -> navigate to lse-ds105-course-notes)

5. Open VSCode Command Palette (View -> Command Pallette) and type "Quarto: Render Project". _Voilà_, you should see the course website now.

## 🗒️ Syllabus

| **Intro**                                                |                  |
|:----------------------------------------------------------|------------------|
| &nbsp;&nbsp;&nbsp;&nbsp;Introduction and key tools for data scientists                | Week 01 |
| **Behind the scenes**                                  |                  |
| &nbsp;&nbsp;&nbsp;&nbsp;The Terminal: navigating the command line<br/> &nbsp;&nbsp;&nbsp;&nbsp;The Cloud: accessing and getting data in and out<br/> &nbsp;&nbsp;&nbsp;&nbsp;The Internet: protocols + scrapping + APIs| Week 02 <br/> Week 03 <br/> Week 04|
| **Working with data**                                |                  |
| &nbsp;&nbsp;&nbsp;&nbsp;The nature and shape of data<br/>&nbsp;&nbsp;&nbsp;&nbsp;Tabular data: dataframes and databases<br/>&nbsp;&nbsp;&nbsp;&nbsp;Unstructured data (text, audio & image)<br/>&nbsp;&nbsp;&nbsp;&nbsp;Text as data, regex and sentiment analysis| Week 05 <br/> Week 07 <br/> Week 08<br/> Week 09|
| **Applications**                                         |                  |
| &nbsp;&nbsp;&nbsp;&nbsp;Topic modelling & document similarities<br/>&nbsp;&nbsp;&nbsp;&nbsp;Data viz with the grammar of graphics| Week 10 <br/> Week 11 |

## Tentative class outline

(Under validation at [issue#1](https://github.com/LSE-DSI/lse-ds105-course-notes/issues/1))

| **Classes (Labs)**                                                |                  |
|:----------------------------------------------------------|------------------|
| **No classes** <br/>&nbsp;&nbsp;&nbsp;&nbsp;_(but point students to resources to practice R/python)_| Week 01|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 01)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;Problem set involving the command line<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- commands related to navigation (`pwd`, `cd`, `..`)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- commands related to creation of files (`touch`, Emacs (?))<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- generic commands to search, print and move stuff around (`cp`, `mv`, `cat`, `grep`)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- installation of something that involves setting environment variables | Week 02 |
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 02)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;Problem set involving AWS <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- `ssh` to an EC2 instance & create some files<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- students should be able to realise they are inside another computer, with commands like `whoami`, `htop` and [others](https://www.thegeekstuff.com/2009/03/4-ways-to-identify-who-is-logged-in-on-your-linux-system/)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- use `scp` to download files they created in the VM<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Summative, worth 10%]:** _problem set involving uploading data to an S3 bucket. Deadline: day before next class_| Week 03|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 03)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;Navigating the DOM & web scrapping <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Have students select a webpage to scrap<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (we could shortlist a few suggestions of easy-to-scrap websites beforehand, maybe something from [here](https://docs.google.com/spreadsheets/d/1wZhPLMCHKJvwOkP4juclhjFgqIY8fQFMemwKL2c64vk/edit#gid=0)?)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- have students scrap this website either with `BeautifulSoup` (python) or `rvest` (R)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- save specific items to a file (e.g.: content of `<td>` tags or some text from a `<div>`)<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Group definition]:** after class, students pitch their ideas of preferred APIs/datasets, either on Slack or Moodle<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Summative, worth 15%]:** _A problem set that will involve web scrapping. Deadline: day before next class._ | Week 04|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 04)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;Github & Markdown <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- students create a Github account<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- students create their own github.io pages and format it with Markdown according to instructions<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- _(bonus/homework)_ each student create an individual Github repo and upload the code they wrote last week<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Group definition]:** students form groups of 3 and submit a team contract to Moodle (not marked, only formative)| Week 05|
| **Reading Week**| Week 06|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 06)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;Collaborating using Github <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Each group will be tasked at creating a group repository<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (they could use my template [@jonjoncardoso/data-science-workflow](https://github.com/jonjoncardoso/data-science-workflow) or start from scratch)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- each team member will then submit a Pull Request<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Instruction to groups]:** Reinforce what students need to cover in their presentations next week| Week 07|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 07)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;**FIRST round of group presentations**<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- groups present the data sources, how they are getting the data & the questions they want to answer<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Presentations are summative, worth 15%]**| Week 08|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 08)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;Computational Notebooks and DataFrames <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- setup computational notebooks (R markdown or Jupyter)<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- read a 'messy' CSV files (get inspiration from [here](https://b-greve.gitbook.io/beginners-guide-to-clean-data/)) as a data frame<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- calculate simple summary statistics<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- _(summative coursework)_ exercise in data wrangling that can be implemented in tidyverse or pandas| Week 09|
| &nbsp;&nbsp;&nbsp;&nbsp;**(Lab 09)**<br/>&nbsp;&nbsp;&nbsp;&nbsp;**SECOND round of group presentations** <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- groups present the data sources, how they are getting the data & the questions they want to answer <br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;**[Presentations are summative, worth 20%]**| Week 11|

## 📑 Course Content

This course uses a project-based learning approach towards the study of online publishing and group-based collaboration, essential ingredients of modern data science projects.

It introduces the principles and applications of the electronic storage, structuring, manipulation, transformation, extraction, and dissemination of data. This includes data types, how data is stored and recorded electronically, the concept and fundamentals of databases. It also covers how data is formatted and communicated. It presents basic methods for obtaining data from the Internet, including simple methods for web scraping and the use of APIs to submit queries that return structured data. Finally, it covers methods for formatting and publishing data.

Sharing and publishing data will also form a key part of this module and will include key skills in on-line publishing, including the elements of web design, the technical elements of web technologies and web programming, as well as the use of revision-control and group collaboration tools such as GitHub. Each student will build an interactive website based on content relevant to their domain-related interests, and will use GitHub for accessing and submitting course materials and assignments. The final project will involve group work to create a data-based website published on GitHub.

This module is not designed to be a hands-on introduction to the use of databases, but does introduce the concepts of databases. For more detailed learning on databases, we will encourage students to take ST207 Databases.

### 📝 Learning Objectives

(From CAPIS)

By the end of this course students will be able to:
- Understand the basic structure of data types and common data formats
- Show familiarity with international standards for common data types
- Manage a typical data acquisition, cleaning, structuring, and analysis workflow using practical examples
- Clean data, and diagnose common problems involved in data corruption and how to fix them
- Understand the concept and fundamentals of databases
- Link data is linked from different sources
- Manage a typical data acquisition, cleaning, structuring, and analysis workflow using practical examples and real database applications.
- Use the collaboration and version control system GitHub, based on the git version control system.
- Understand the fundamentals of “markup” languages, including Hypertext Markup Language (HTML), Extensible
- Markup Language (XML), and the Markdown format for formatting documents and web pages.
- Create and maintain simple websites using HTML and CSS
- Use APIs to send and retrieve data from Internet sources

