[root@ip-172-31-80-242 ~]#
[root@ip-172-31-80-242 ~]# git clone git@github.com:mudi3d/branch_test.git
Cloning into 'branch_test'...
Warning: Permanently added the ECDSA host key for IP address '140.82.112.3' to the list of known hosts.
warning: You appear to have cloned an empty repository.
[root@ip-172-31-80-242 ~]#
[root@ip-172-31-80-242 ~]#
[root@ip-172-31-80-242 ~]# cd branch_test/
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# echo "Test" > test
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git add .
[root@ip-172-31-80-242 branch_test]# git commit
Aborting commit due to empty commit message.
[root@ip-172-31-80-242 branch_test]# git commit -m "test"
[main (root-commit) e82e3bc] test
 1 file changed, 1 insertion(+)
 create mode 100644 test
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git push
Warning: Permanently added the ECDSA host key for IP address '140.82.113.3' to the list of known hosts.
Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Writing objects: 100% (3/3), 207 bytes | 207.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:mudi3d/branch_test.git
 * [new branch]      main -> main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# echo "Test1" > test
[root@ip-172-31-80-242 branch_test]# git add .
[root@ip-172-31-80-242 branch_test]# git commit -m "test1"
[main 2c8423d] test1
 1 file changed, 1 insertion(+), 1 deletion(-)
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git push origin main
Enumerating objects: 5, done.
Counting objects: 100% (5/5), done.
Writing objects: 100% (3/3), 237 bytes | 237.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:mudi3d/branch_test.git
   e82e3bc..2c8423d  main -> main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git branch
* main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git brach -r
git: 'brach' is not a git command. See 'git --help'.

The most similar command is
        branch
[root@ip-172-31-80-242 branch_test]# git branch -r
  origin/main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git pull
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), 616 bytes | 616.00 KiB/s, done.
From github.com:mudi3d/branch_test
 * [new branch]      dev        -> origin/dev
Already up to date.
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git branch
* main
[root@ip-172-31-80-242 branch_test]# git branch -r
  origin/dev
  origin/main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# cat test
Test1
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git switch dev
branch 'dev' set up to track 'origin/dev'.
Switched to a new branch 'dev'
[root@ip-172-31-80-242 branch_test]# cat test
Test1
test2
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git branch
* dev
  main
[root@ip-172-31-80-242 branch_test]# git branch -r
  origin/dev
  origin/main
[root@ip-172-31-80-242 branch_test]# git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# cat test
Test1
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git branch
  dev
* main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git branch -a
  dev
* main
  remotes/origin/dev
  remotes/origin/main
[root@ip-172-31-80-242 branch_test]# git switch dev
Switched to branch 'dev'
Your branch is up to date with 'origin/dev'.
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# at test
syntax error. Last token seen: t
Garbled time
[root@ip-172-31-80-242 branch_test]# cat test
Test1
test2
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# echo "Dev" > dev
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# ll
total 8
-rw-r--r-- 1 root root  4 Dec  2 05:38 dev
-rw-r--r-- 1 root root 12 Dec  2 05:38 test
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git status
On branch dev
Your branch is up to date with 'origin/dev'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        dev

nothing added to commit but untracked files present (use "git add" to track)
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git add dev
[root@ip-172-31-80-242 branch_test]# git commit -m "dev"
[dev 390bb3f] dev
 1 file changed, 1 insertion(+)
 create mode 100644 dev
[root@ip-172-31-80-242 branch_test]# git push
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 262 bytes | 262.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:mudi3d/branch_test.git
   1cabad9..390bb3f  dev -> dev
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# ll
total 8
-rw-r--r-- 1 root root  4 Dec  2 05:38 dev
-rw-r--r-- 1 root root 12 Dec  2 05:38 test
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git switch main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# ll
total 4
-rw-r--r-- 1 root root 6 Dec  2 05:40 test
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# echo "Main" > main
[root@ip-172-31-80-242 branch_test]# git add .
[root@ip-172-31-80-242 branch_test]# git commit -m "main"
[main 3defbaa] main
 1 file changed, 1 insertion(+)
 create mode 100644 main
[root@ip-172-31-80-242 branch_test]# git push
Warning: Permanently added the ECDSA host key for IP address '140.82.113.4' to the list of known hosts.
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 265 bytes | 265.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
To github.com:mudi3d/branch_test.git
   2c8423d..3defbaa  main -> main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# git branch
  dev
* main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# ll
total 8
-rw-r--r-- 1 root root 5 Dec  2 05:40 main
-rw-r--r-- 1 root root 6 Dec  2 05:40 test
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]# cat main
Main
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
[root@ip-172-31-80-242 branch_test]#
