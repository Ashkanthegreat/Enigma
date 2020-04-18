Setup:

Classes

Module
  Random stuff and generated stuff
      will create the key generator
      will generate todays date
      will hold character set 

Enigma
  encrypt method
  decrypt method

Key
will create the keys


The keys are created by generating a random five digit number, like 02715, and splitting it up like so:

A key: first two digits (02)
B key: second and third digits (27)
C key: third and fourth digits (71)
D key: fourth and fifth digits (15)


Offset
  will hold the date information


  The offsets are found using the date of transmission.

  Consider the date formatted as a number, DDMMYY. If the date is August 4, 1995, it would be represented as 040895.
  Square the numeric form (1672401025)
  Take the last four digits (1025)

  A offset: The first digit (1)
  B offset: The second digit (0)
  C offset: The third digit (2)
  D offset: The fourth digit (5)

Shift
  will hold the logic to
    will be the sum of two other shifts known as the Keys and the Offsets. So the A shift will be the A key plus the A offset, the B shift will be the B key plus the B offset, etc.
