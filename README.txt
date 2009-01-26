= scoped_helper

* http://github.com/deadlyicon/scoped-helpers

== DESCRIPTION:

Allows you to create scoped view helpers in rails 

== FEATURES/PROBLEMS:

== SYNOPSIS:

Ever wanted to create a helper class rather then just prefixing all your helpers of a certain type? Well now you can

Before:
  module AdminHelper
    def admin_form_for(admin)
      ...
    end
  end
  
  <% admin_form_for admin do -%>
    ...
  <% end -%>

After:
  module AdminHelper
    scoped_helper :admin do
      def form_for(*args, &block)
        ...
      end
    end
  end

  <% admin.form_for admin do -%>
    ...
  <% end -%>

== REQUIREMENTS:

ActionView

== INSTALL:

Run:
  sudo gem install scoped_helper

Add this to you environment.rb
  config.gem 'scoped_helper'

== LICENSE:

(The MIT License)

Copyright (c) 2009 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
