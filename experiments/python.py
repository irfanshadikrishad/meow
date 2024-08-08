from .moduleY import spam # type: ignore
from .moduleY import spam as ham  # type: ignore
from . import moduleY
from ..subpackage1 import moduleY # type: ignore
from ..subpackage2.moduleZ import eggs # type: ignore
from ..moduleA import foo # type: ignore

str1 = "Race"
str2 = "Care"

# convert both the strings into lowercase
str1 = str1.lower()
str2 = str2.lower()

# check if length is same
if(len(str1) == len(str2)):

    # sort the strings
    sorted_str1 = sorted(str1)
    sorted_str2 = sorted(str2)

    # if sorted char arrays are same
    if(sorted_str1 == sorted_str2):
        print(str1 + " and " + str2 + " are anagram.")
    else:
        print(str1 + " and " + str2 + " are not anagram.")

else:
    print(str1 + " and " + str2 + " are not anagram.")


def regret():
    sort = 1+2;

