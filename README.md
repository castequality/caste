# Adding a Photo (Left Side Feed)

Make a `photo` post on the `castequality` tumblr account. *MUST BE OF TYPE `photo`!*

# Adding a Blog Post (Center Feed)

Make a post on the `casteblog` tumblr account with a post type of:
* `text`
* `photo`
* video`

*NOTE:* other types will show up in the feed, but won't be styled correctly.

# Adding a Project (Projects Page)
This is currently a hacky workaround, but seems to do ok.
Make a `photo` tumblr post to `casteproject` tumblr account. Each `photo` added will be 
its own slide on the `#/project` page. 
## Adding a Video
To add a video, make the `photo` post as normal. You'll be adding the `vimeo` embed link as the `post` caption by:
1. Going to the `vimeo` page for the video.
2. Click on the `share` overlay within the video's frame.
3. Click on `show options` under the `Embed` header of the popup
4. Set the size to 888 x 500
5. Uncheck all of the boxes (no protrait, byline, text underneath video, etc)
6. Copy the mark-up from the `Embed` box
7. Back in the `tumblr` photo post editor, click on the `<html>` button (should be in the top right of the editor's buttons)
8. Paste the `embed` code and submit the post 

# Adding a Contributor to Visuals Page
Currently, pulling from:
* `chrismulhern.tumblr.com`
* `zandertaketomo.tumblr.com`

To add a contributor, add the `tumblr` username to the 
```
...
.value('contributors', [...])
```
call [here](app/scripts/services/blog.coffee#L36)

#Development

* Developed on top of [AngularJS](http://angularjs.org)
* Built with [Yeoman](http://yeoman.io)
  * <b>Yeoman Installation</b>: <br>
    Follow the steps [here](http://yeoman.io/installation.html)
    Once you have <b>Yeoman</b>, open a command prompt, run `cd ~/folder/with/caste` to move into the root directory, 
    then `yeoman server` to open a browser pointed to the home page. Thanks to <b>Yeoman</b>, any changes to a
    `.coffee`, `.css`, or `.html` file will trigger a reload in the browser.

## Deployment

* When you're ready to deploy, run the following:
```bash
  # move into the root directory (replace with the path to your checkout)
  cd ~/path/to/caste
  # run the deployment script
  script/deploy
```