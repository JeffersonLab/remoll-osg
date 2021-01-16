# remoll-osg
Job scripts for submission of remoll jobs to Open Science Grid

## Usage
```shell script
# directory to store the output and error files
# not doing this will cause the job to be held
mkdir log 

# submit the job
condor_submit remoll_submit 
```