# new-item-context

Simple batch&amp;reg script for adding new item into 'New' section of Windows Context Menu

# Usage:

Open `item_format.reg` and change these arguments to your:

- '::EXTENSION::' = Name of file extension (ex: `lua`)
- '::TEMPLATE-FILE::' = Name of template file from `.Templates` directory (ex: `Script.lua`)
- '::ITEM-NAME::' = Name of item in context menu (ex: `Lua Script`)

Put template file into `.\Templates\` and run `start.bat` file.

# Examples:

## Adding Lua Script item:

`item_format.reg`

```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.lua]
@="lua"

[HKEY_CLASSES_ROOT\.lua\ShellNew]
"FileName"="lua.lua"

[HKEY_CLASSES_ROOT\lua]
@="Lua Script"
```

## Adding HTML page item:

`item_format.reg`

```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.html]
@="html"

[HKEY_CLASSES_ROOT\.html\ShellNew]
"FileName"="html.html"

[HKEY_CLASSES_ROOT\html]
@="HTML File"
```

## Adding VMT file item:

`item_format.reg`

```
Windows Registry Editor Version 5.00

[HKEY_CLASSES_ROOT\.vmt]
@="vmt"

[HKEY_CLASSES_ROOT\.vmt\ShellNew]
"FileName"="vmt.vmt"

[HKEY_CLASSES_ROOT\vmt]
@="VMT File"
```

## Result:

![screenshot](https://i.imgur.com/jF5hUbk.png)
