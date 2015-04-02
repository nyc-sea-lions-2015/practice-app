## HTML ##

- On login form utilize
```html
<input type='password'>
```

## Models ##

- Add AR Validations to model code
  - DB constraints FTW!
- Good AR Relationships
- Lets keep responsibilities in the model for doing updates to itself (set_duration!)


## Controller ##

- Keep controller names / views named similarly
  @cur_sess.touch
  @cur_sess.duration= ((@cur_sess.updated_at - @cur_sess.created_at) / 60).to_i
  @cur_sess.save!
- Guard against failure in object creation

## CSS ##
- Minimal styling

## JS ##
- None
