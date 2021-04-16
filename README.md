[Mad](https://github.com/hsul4n/mad) is a simple tool that helps developers to orginize projects as show below:

```
~/Code
│
└─Language (dart)
  │
  └─Framework (flutter)
     │
     └─Organization (google)
       │
       └──Project (gpay)
       # ~/Code/dart/flutter/google/gpay
```

# Installation

```shell
gem install mad
```

# Commands

## New

Just as simple as possible, just define your org and write script and `mad` will try to find the correct path.

```shell
# ~/Code/dart/flutter/google/gpay
mad new "flutter create gpay" --org google
```
