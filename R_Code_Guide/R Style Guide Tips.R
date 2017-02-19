# R Style Guide Tips
# (based on http://adv-r.had.co.nz/Style.html)

# File Names: Should be meaningful and end in .R:
# Good
fit-models.R
terrorism-analysis.R
# Bad
xnid.R
miscellaneous.r

# To Run Files in Sequence, Include Numbers:
0-download_data.R
1-parse_data.R
2-explore_data.R


# Object Names: Variable and function names should be lowercase. 
# Use an underscore (_) to separate words within a name. 
# Generally, variable names should be nouns and function names should be verbs.
# Tip: Pick meaningful names that relate to what they do/what they are for.
# Good
event_one
day_1

# Bad
first_day_of_the_year_in_which_violence_occured
DAYONE
aihcip1223
XCV

# Tip: Avoid relabeling functions/variables that already exist
# Bad
T <- FALSE
c <- 10000
mean <- sum(x)


# Spaces: Place spaces around all infix operators (=, +, -, <-, etc.). 
# The same rule applies when using = in function calls. 
# Always put a space after a comma, and never before.
# Good
avg <- mean(feet / 12 + inches, na.rm = TRUE)

# Bad
avg<-mean(feet/12+inches,na.rm=TRUE)

# Exceptions
x <- 1:1000
base::find

# Spaces with left parentheses, except in function calls.
# (extra spacing is ok if improves allignment in rows)
# Good
if (debug) do (z)
plot(x, y, z)
war[1, ]

# Bad
if(debug)do(x)
plot (x , y , z)
war[1 ,]
war[1,]


# Curly Braces: Ones that open should be followed by a new line
# (Unless followed by an "else")
# Good

if (y < 0 && debug) {
  message("Y is negative")
}

if (y == 0) {
  log(x)
} else {
  y ^ x
}

# Bad

if (y < 0 && debug)
  message("Y is negative")

if (y == 0) {
  log(x)
} 
else {
  y ^ x
}

# Tip: It is ok to leave short statements on one line

# Line Length: Limit to 80 characters, 
# since this fits easily on the printed page.

# Indentation: Always use two spaces.

# Assignment
# Good
z <- 503
# Bad
z = 503

# Lastly, use commented lines of "-" and "=" to break up
# parts of code, so that the file is more easily read/interpreted

# Load data ---------------------------

# Plot data ===========================
