#### Copy content to clipboard in gitbash

```
cat foo.txt > /dev/clipboard
```

---

#### Use nl to give line numbers 

Actual file:  
foo.txt  
this  
is  
test  

```
nl foo.txt
```
File contents after nl:  
1  this  
2  is  
3  test  

File contents with a saperator:  
```
nl -s ".)" foo.txt
```
Adds a saperator between line number and line content  
1.)  this  
2.)  is  
3.)  test  
