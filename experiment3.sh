# PROGRAM 1: FORK(), GETPID(), WAIT(), EXIT()
#!/bin/bash
echo "Parent Process ID : $$"
(
echo "Child Process ID : $$"
echo "Parent Process ID : $PPID"
exit 0
) &
wait
echo "Child Process Completed"

# PROGRAM 2: WAIT() SYSTEM CALL
#!/bin/bash (
echo "Child Process Running"
sleep 5
echo "Child Process Completed"
) &
wait
echo "Parent Resumes Execution"

# PROGRAM 3: CLOSE() SYSTEM CALL
#!/bin/bash
exec 3< sample.txt
echo "File Opened Successfully"
exec 3<&-
echo "File Closed Successfully"
