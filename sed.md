## sed ('S'tream 'ED'itor)

's/find/replace/'


sed command to copy string pattern and paste at desired location in line

**Input:**

```
[{"value":"foo"},{"value":"bar"}]
```

**Output:**

```
[{"key":"foo","value":"foo"},
{"key":"bar","value":"bar"}]
```

**Command:**

```
echo '[{"value":"foo"},{"value":"bar"}]' | sed 's/},{/},\n{/g' | sed 's/\("value"\)\(:[^.]*"\)/"key"\2,\1\2/g'
```


**Explaination:**

1. echo '[{"value":"foo"},{"value":"bar"}]'

    * prints the given string

2. sed 's/},{/},\n{/g'

    * Add a new line between JSON objects
    * Adds \n between "},{"

3. sed 's/\("value"\)\(:[^.]*"\)/"key"\2,\1\2/g'

    * To group a pattern in sed \( \) is used the pattern between \( \) will be considered as group
    * And the group can be repeated using \1 \2 \3 etc. in replace part of sed

    * Here we are grouping "value" and whatever string is in between ':' to '"' (i.e: :"foo" , :"bar" )
    * "value" will be \1 ; and string between ':' to '"' will be \2
    * Here, \("value"\)\(:[^.]*"\) is the 'find' part
    * "key"\2,\1\2 is the 'replace' part
    * where "key" is static and then \2, => This will create an output like  << {"key":"foo", >> afterwards is \1\2 and that will give output like << "value":"foo" >>

    * g at the tail is used to repeat this opearations for entire string without this it will replace only first occurance.


For more details read [sed Manual](https://www.gnu.org/software/sed/manual/sed.html)

![Gnu mascot](https://www.gnu.org/graphics/gnu-head-sm.jpg)




	
