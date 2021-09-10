
# Opening file "um-server-01.txt" and putting its contents into log_file variable
log_file = open("um-server-01.txt")

# Creating function sales_reports that takes in the variable called log_file that holds
# our files data. log_file is a parameter into the function.
def sales_reports(log_file):

    # Creating a For loop that loops over each line in the file ('um-server-01.txt')
    for line in log_file:
        # gets rid of the trailing characters.
        line = line.rstrip()

        # sets variable day to the line of slice 'start' at character 0 and 'end' at 
        # character 3
        day = line[0:3]

        # if the first 3 characters == "Tue" then do some following functionality.
        if day == "Tue":
            # prints the line.
            print(line)

# invoking/calling the function with the argument(log_file)
sales_reports(log_file)