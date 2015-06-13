@Collections = @Collections || {}
@Schemas = @Schemas || {}

@Posts = Collections.Posts = new Mongo.Collection 'posts'

@Post = Schemas.Post = new SimpleSchema(
  user_id:
    type: String
    autoValue: ->
      if this.isInsert
        return Meteor.userId()
  lie:
    type: String
  truth:
    type: String
  created_at:
    type: Date
    autoValue: ->
      if this.isInsert
        new Date()
)

Posts.attachSchema Post
