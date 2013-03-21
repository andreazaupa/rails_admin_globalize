# Rails Admin Globalize custom action.

this code is untested and need a good rewrite, but work.
treat it as a prototype.


# Usage:

Add the gem to your bundler:
```ruby
  gem "rails_admin"
  gem "globalize3"
  gem "rails_admin_globalize"
```

Add globalize to the list of actions in rails_admin's initializer:
```ruby
  RailsAdmin.config do |config|

    config.actions do
      dashboard do ; end
      globalize do ; end
      index do ; end
      new do ; end
      export do ; end
      bulk_delete do ; end
      show do ; end
      edit do ; end
      delete do ; end
      history_show do ; end
      show_in_app do ; end
    end

  end
```

# At this point:
  - a translation Action appear in rails_admin near the edit button .
  - the configuration for the field was ereditated from edit action configuration .
  - has_many and has_one fields of translated models is included in the translations form .
  - the translation look for I18n.avaiable_locales
  - take this as a prototype and use as your own risk :-)
  - clone/fork/improve
