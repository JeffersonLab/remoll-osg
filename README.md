# remoll-osg
Boilerplate setup for submission of remoll jobs to Open Science Grid.

# Setup:
- Login to or create an [OSGConnect account](https://www.osgconnect.net/profile).
- Click on "Edit Profile" and add your SSH Public Key.
- Note the login node you are assigned to, Eg.: `login05.osgconnect.net`
- Now you can SSH into the assigned login node: `ssh <user>@login05.osgconnect.net`

## The workspace:

- OSG provides you with two directories, `/public` and `/home`:
```shell
Disk utilization for <user>:
/public   : [                                 ] 0% (1752/500000 MB)
/home     : [                                 ] 0% (14/161061 MB)
[<user>@login05 ~]$
```
- Clone this repository into the pwd (`~`).
- All the files needed to submit a job should now be in `~/remoll-osg/`.
- The output files from the sent jobs would be stored in `/public/<user>/remollOutput/`.

## Job script `job.sh`:

- This file executes remoll inside a singularity container on OSG.
- By default, it executes `remoll /srv/runexample.mac`, you can change it to whatever macro you need.

## Submit file `submit`:

- To change the macro remoll runs, you'll need to add the macro to `~/remoll-osg/`, and mention it in the `submit` file, Eg.: `transfer_input_files = otherMacro.mac`.
- To run more jobs in a single job cluster, simply change the queued jobs in the `submit` file, Eg: `queue 10`.
- To tune the resources allocated to each job in the cluster, you can change the requested resources.

## Submitting/Monitoring a job
```shell
# Submit job
condor_submit submit

# Monitor jobs:
watch -n1 condor_q
```

## Outputs
The outputs are saved as `file.JobCluster.JobProcess` and stored in the `/public/<user>/remollOutput` directory:
```
ls log/                             # error.7692511.0 log.7692511.0 output.7692511.0
ls /public/<user>/remollOutput/     # remollout.7692511.0.root
```