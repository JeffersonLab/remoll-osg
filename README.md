# remoll-osg
Job scripts for submission of remoll jobs to Open Science Grid

## Usage
```shell script
# directory to store the output and error files
# not doing this will cause the job to be held
mkdir log 

# submit the job
condor_submit remoll.submit 
```

## Outputs
The outputs are saved as file.JobCluster.JobProcess:
```shell script
ls log/ # error.7692511.0 log.7692511.0 output.7692511.0
ls      # remollout.7692511.0.root (and other stuff!)
```