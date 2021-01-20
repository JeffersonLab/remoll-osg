# remoll-osg
Job scripts for submission of remoll jobs to Open Science Grid

## Usage
```shell script
# directories to store the output and log files
# not doing this will cause the job to be held
mkdir log

# submit the job
condor_submit remoll.submit 
```