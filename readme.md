# Introduction to Computational Social Science with R
[Dr Johannes B. Gruber](https://www.johannesbgruber.eu/)

- [Course description](#course-description)
- [Schedule](#schedule)
- [Download the course material](#download-the-course-material)
- [Required software](#required-software)
- [render the slides](#render-the-slides)

This is the course material for the GESIS Fall Seminar in Computational Social Science 2024 course [Introduction to Computational Social Science with R](https://training.gesis.org/?site=pDetails&child=full&pID=0x6C2F9D88EDAD43D197A2F284BAA9B007&subID=0x5236DF24115A4DABBA25118B4A81384D), Friday 30 August-–Friday 5 September 2024.

# Course description

The Digital Revolution has produced unprecedented amounts of data that are relevant for researchers in the social sciences, from online surveys to social media user data, travel and access data, and digital or digitized text data. How can these masses of raw data be turned into understanding, insight, and knowledge? The goal of this course is to introduce you to Computational Social Science with R, a powerful programming language that offers a wide variety of tools, used by journalists, data scientists and researchers alike. Unlike many introductions to programming, e.g., in computer science, the focus of this course is on how to explore, obtain, wrangle, visualize, model, and communicate data to address challenges in social science. The course emphasizes the theoretical and ethical aspects of CSS while covering topics such as web scraping (obtaining data from the internet), data cleaning (getting raw data into a table or otherwise easy-to-analyze format) and visualization (i.e. drawing bar, line, scatter plots and more from data), automated/computational text analysis (i.e. using the computer to find patters in text or sort documents into categories), machine learning (i.e. training algorithms on annotated data and generalizing patterns to unseen data), network analysis (i.e. examining relationships among entities, such as persons, organizations, or documents) and agent based modeling (i.e. simulating interactions between such entities). The course will be held as a blended learning workshop with video lectures focused on theoretical background and demonstrations accompanied by live online sessions where students can ask questions and work through projects together.

# Schedule

| time  | Session                                      |
|-------|----------------------------------------------|
| Day 1 | Introduction to Computational Social Science |
| Day 2 | Obtaining Data                               |
| Day 3 | Computational Text Analysis                  |
| Day 4 | Computational Network Analysis               |
| Day 5 | Social Simulation & Agent-based Models       |

# Download the course material

The easiest way yp get the course material is to clone this repository.
If you aren’t already familiar with git, I would recommend to do this via RStudio.

In RStudio go to “Create a project” (top left corner with this symbol ![](https://github.com/JBGruber/r-text-analyse-ffm/raw/main/media/new_project.png)).
Then select “Version Control”:

![](https://github.com/JBGruber/r-text-analyse-ffm/raw/main/media/wizard.png)

In the next window, select “Git”:

![](https://github.com/JBGruber/r-text-analyse-ffm/raw/main/media/wizard-2.png)

Then copy the URL `https://github.com/JBGruber/computational-social-science-r.git` into the URL field and select where to download the project to.

![](https://github.com/JBGruber/r-text-analyse-ffm/raw/main/media/wizard-3.png)

After clicking “Create Project”, a new session should open.
That’s it!

# Required software

You should have several software applications installed before the start of the course:

- [R](https://cran.r-project.org/)
- An IDE, preferably [RStudio Desktop](https://posit.co/download/rstudio-desktop/), but you can also use [VSCodium](https://vscodium.com/) or [VSCodium](https://code.visualstudio.com/download) or [Positron](https://github.com/posit-dev/positron)
- [Quarto](https://quarto.org/docs/get-started/)

The course uses the base pipe character (`|>`) which is only available in `R` version 4.1.0+.
If you still use an older version of `R`, it is recommended that you update it.
Since the newer version is not compatible with old installations of `R`, you will have to install all your old packages again.
You can use a small function for this, which guides you through retrieving your old packages, from this [Github gist](https://gist.github.com/JBGruber/28c79af6d5f9015370feef31da2cb1da):

``` r
source("https://gist.githubusercontent.com/JBGruber/28c79af6d5f9015370feef31da2cb1da/raw/8165f560fc53647e3456ba661fc65d0244ac437c/get_old_packages.R")
get_old_packages()
```

After cloning this repository to your computer, you can install all required R packages with the code below.
You will be asked if you want to install missing packages, so pay attention to the Console:

``` r
if (!requireNamespace("rlang", quietly = TRUE)) install.packages("rlang", dependencies = TRUE)
rlang::check_installed("attachment")
rlang::check_installed("remotes")
rlang::check_installed(attachment::att_from_qmds(path = ".", recursive = TRUE))
```

# render the slides

The rendered version of the slides are available on [Moodle](https://elearning.gesis.org/course/view.php?id=109).
If you want to render them yourself, you can do so from R:

``` r
library(quarto)
quarto_render("day-1.qmd")
quarto_render("day-2.qmd")
quarto_render("day-3.qmd")
quarto_render("day-4.qmd")
quarto_render("day-5.qmd")
```

Or via the Terminal:

``` bash
quarto render day-1.qmd && \
 quarto render day-2.qmd && \ 
 quarto render day-3.qmd && \
 quarto render day-4.qmd && \
 quarto render day-5.qmd
```
