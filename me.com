name: shell commands

 on: [push]

 jobs:
   
   run-shell-command:
      runs-on:ubuntu-latest
      steps:
       
        - name: checkout

	  uses: actions/checkout@v3

	- name: echo string

	  run: echo " Hello world "

	- name: multi string

	  run:
	   
	    node -v

	    npn  -v
	- name: python command
	  run:
	    import platform
	    print(platform.processor())
	    shell: python
 run-windows-commands:
   runs-on: windows-latest
   steps:

     - name: Directory
       run: Get-Location

