1. get python path
user@ubuntu:~/working/directory$ python
Python 2.7.6 (default, Nov 13 2018, 12:45:42)
[GCC 4.8.4] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import sys
>>> sys.path
['', '/usr/lib/python2.7', '/usr/lib/python2.7/plat-x86_64-linux-gnu', '/usr/lib/python2.7/lib-tk', '/usr/lib/python2.7/lib-old', '/usr/lib/python2.7/lib-dynload', '/usr/local/lib/python2.7/dist-packages', '/usr/lib/python2.7/dist-packages', '/usr/lib/python2.7/dist-packages/PILcompat', '/usr/lib/python2.7/dist-packages/gtk-2.0', '/usr/lib/python2.7/dist-packages/ubuntu-sso-client']

2. copy tab.py to one of the paths shown in above sys.path command output
For example, copy tab.py to /usr/lib/python2.7 directory.

3. set the PYTHONSTARTUP env
Set the env PYTHONSTARTUP when startup by running pythonenv.sh in /etc/profile.d/

export PYTHONSTARTUP=/usr/lib/python2.6/site-packages/tab.py

4. import tab
>>> import tab

