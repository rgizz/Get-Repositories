# Get-Repositories

## Introduction

Get repositories for compute-io from GitHub.

Assumes you are a member of the project.

## How To Use

1) Sign into GitHub.

2) On your local machine, execute the following:

<pre>
$ mkdir MyProj
$ cd MyProj
$ git init
$ mv /path/to/getRepository.pl .
$ ./getRepository.pl 
</pre>

## Current Limitations

1) Only downloads the *sub*projects of compute-io.

2) Sleeps 5 seconds between each request.  This can probably
be eliminated -- I don't know if there is any limitation on
how many clone requests can be made in a short period of time 
on GitHub.



