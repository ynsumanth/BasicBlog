#nothing was here

class Blog.Views.PostsNewView extends Backbone.View
 el: '#posts'

 template: JST["backbone/templates/posts/new"]

 events:
   "submit #new-post": "save"

 initialize: ->
   @render()
   #@model.on("invalid",@handleError)

 render: ->
   @$el.html @template()

 save: (e) ->
   e.preventDefault()
   e.stopPropagation()
   title = $('#title').val()
   content = $('#content').val()
   model = new Blog.Models.Post({title: title, content: content})
   @collection.create( model,
        success: (post) =>
       @model = post
       window.location.hash = "/#{@model.id}") 
       
  #handleError: (model, error) =>
  #    $(".validation-error").html("✗ " + error.msg)