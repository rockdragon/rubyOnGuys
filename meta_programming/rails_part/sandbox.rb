# $SAFE	Constraints
# 0	No checking of the use of externally supplied (tainted) data is performed.
#       This is Ruby's default mode.
# >= 1	Ruby disallows the use of tainted data by potentially dangerous operations.
# >= 2	Ruby prohibits the loading of program files from globally writable locations.
# >= 3	All newly created objects are considered tainted.
# >= 4	Ruby effectively partitions the running program in two.
#       Nontainted objects may not be modified. Typically, this will be used to create a sandbox: the program sets up an environment using a lower $SAFE level, then resets $SAFE to 4 to prevent subsequent changes to that environment.

def sandbox(&block)
  proc {
    $SAFE = 2
    yield
  }.call
end

a = 'hello'

begin
  sandbox { a = 220 }
rescue Exception => ex
  ex
end

p a