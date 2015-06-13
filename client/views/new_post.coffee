Template.new_post.events(
  'submit #new_post': (event, template) ->
    event.preventDefault()
    post = SimpleForm.processForm event.target
    Posts.insert post
    Router.go '/posts'
)
