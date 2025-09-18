## eZ Style Editor for Exponential

ezstyleeditor is an extension that allows the integration of the style editing within the administration / content edititing. 

Version: 1.0.0

## Use Cases

Here are some common use cases:

- Making related changes in style code
- Making style part of the content in general

## Installation

Follow these steps to add and enable the ezstyleditor extension to your Exponential installation:

  1) Extract the archive into the extension/ directory

  2) Edit site.ini.append.php in settings/override/. Add the following to the file:

       [ExtensionSettings]
       ActiveExtensions[]=ezstyleeditor

     If you already have the [ExtensionSettings] block, just add the second line.

  3) Load Database Tables (Storage; SQL) in sql directory

  4) Regenerate Extension PHP Class Autoloads

  5) Clear Cache


## Usage

Login to user facing website where the ezwebin website toolbar (ezwt) extension is activated. Required.

Style Editor will be displayed in website toolbar icon list.


## License

This file may be distributed and/or modified under the terms of the "GNU
General Public License" version 2 as published by the Free Software Foundation

This file is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.

The "GNU General Public License" (GPL) is available at
[http://www.gnu.org/copyleft/gpl.html](http://www.gnu.org/copyleft/gpl.html).
