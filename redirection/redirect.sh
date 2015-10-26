#!/bin/bash

# greps here case insensitive from file helloworld.txt
grep -i here <  helloworld.txt


# greps here case insensitive from file helloworld.txt and writes into here.txt
grep -i here < helloworld.txt > here.txt



# greps here case insensitive from file helloworld.txt and appends to  here.txt
grep -i here < helloworld.txt >> here.txt



#END
