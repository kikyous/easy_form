EasyForm
===

> easy form builder without any limitation.

turn

```ruby
<%= f.text_field, :title %>
```
into

```ruby
<%= f.field :text_field, :title %>
```
> as you see `field` is a proxy method that send method and args to `ActionView::Helpers::FormBuilder` instance, so you can write like this: `
<%= f.field :text_area, :title %>
`

output:

```html
  <div class="large-12 columns">
    <label>* Title
      <input type="text" value="" name="article[title]" id="article_title">
    </label>
  </div>
```
template above:

`app/views/easy_form/_default.html.erb`

```erb
<div class='row'>
  <div class='large-12 columns'>
    <label><%= '*' if required? %> <%= label_text %>
      <%= input %>
    </label>
  </div>
</div>

```
or you can use a named template:

```ruby
<%= f.field :text_field, :title, template: 'bootstrap' %>
```
or globally:

```ruby
<%= form_for @article, template: 'bootstrap' %>
```
Install
==

`gem easy_form`

`rails g easy_form:view`

Method and object in template
==
- input  (input tag generated with rails form builder)
- field  (field, such as :title)
- label_text (text display as label)
- required? (this field is required?)
- builder (rails form builder)