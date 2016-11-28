# THE BELA BLOG.

## How to use this repo.

1. Clone to your local machine.
2. Make a new post in the _posts directory:
````$ touch _posts/YYYY-MM-DD-title-here.markdown````
3. Great! Now go into that file you just made and paste this (including the dashes):

````
---
layout: post
title: "Your title here"
date: YYYY-MM-DD
categories:
  - One here
  - You can have more than one 
description: "Post description here."
image: imageName.jpg
author: authorName
---
````
## The components of a post

1. Categories. You can list as many as you like here. You can choose existing ones that are listed in the _categories file, or make a new one. (To make a new one, see Making a New Category).
2. Date. This should match the date in the name of the markdown file you're writing in.
3. Image. See Adding a Post Image.
4. Author. This should link to your author profile! If you don't already have one, see Making and Editing Your Author Profile.
5. The content. This is everything underneath the last three dashes. Write your text in plain text, nothing fancy. There's an easy way to add a few things though:
    - To add an image, use this:
    {% include single-image.html fileName="06.jpg" %}
    the fileName variable will the name of the image you are including. This image should already be in the images folder when you publish your post (~/assets/images).
    - To embed a youtube video, use this:
    {% include youtube.html youtube="youtubeID" %} 
    the youtube variable should be the YouTube ID of the video you want to embed. Not the whole URL!
    - To add code: Surround the code with three backticks (`) on a line above and below a code block.
    ```
    Then it will look like this! :)
    ```
The reason I've implemented these includes is that they make embedding easy, they don't require you to learn any HTML conventions, and your content will always be responsive on desktop and mobile. 

(There are also a couple of includes coming to lay out images two side by side, and three side by side - this is not a trivial task to make everything responsive, so give me a bit of time with it. If you need other things for including content, let me know and I'll write them!) 

## Making a new category

Sometimes you might want to put a post in a category that doesn't yet exist. Here's what to do:

1. Make a new category by creating a blank HTML file in the _category directory.

Name this after the category you're creating, like audio.html for example. 
NOTE: If your category has more than one word (ie, Augmented Instruments), then name the file with a dash between each word, like this:  augmented-instruments.html. 

2. Copy and paste this in your new blank html file, and fill out with your info:
````
---
layout: default
title: "Audio"
description:
permalink: /category/audio/
cat-image: audio.jpg
---
{% include category.html %}
````

See that ````{% include category.html %}```` bit there? It's important. Don't leave it out.

3. Indicate the category title. 

4. Indicate the permalink - the page that category's posts will be displayed on. This is usually /category/your-category-title

5. Give the category an image - it has to be a jpg.

NOTE: There is a naming convention for this, because of boring reasons. That convention is the category title, all lower case, no spaces. For example, Augmented Instruments image would be augmentedinstruments.jpg.

Specify that file name in the cat-image field, and put it where images live: /assets/images/ 
For our purposes, name the category image after the title of the category so the images directory stays understandable.

## Adding a main post image

Every post needs an image. This is the image that will be in the header of a post. There's white text over it, so don't make it mostly white. 

The image name is in the "image: " field of your post header. Put that image in the /assets/images folder, named accordingly. The image dimensions should be about 1200 x 1000 px at the most; don't make them massive or the post will take ages to load.

## Adding/editing your author information

### Add your info!

Author info lives in /_data/authors.yaml. To add yourself as an author, find that file and copy+paste the fields and fill them out with your info:

jimbob:
  name: Jim Bob
  github: jimbobcode
  twitter: jimbobtweets
  email: jimbob@bela.io
  profile: Some words about you. About 200 characters is enough.
  author-image: jimbob.jpg

### Make sure you have a picture!

The author-image field looks for a photo in assets/images/. Make sure you add your author pic to that directory, and that the name of the file matches what you put in the author-image field. (Again, name it after yourself so the images directory doesn't get crazy.)

## Deploy!

* Make sure Jekyll is installed.
To deploy you need Jekyll installed (you'll only have to do this once). It should be as easy as this:

````$ gem install jekyll````

* Make sure bundler is installed.
To deploy you'll also need bundler, which smashes all this nonsense together. It should be as easy as this:

````$ gem install bundler````

This link has more info in case you're stuck: https://jekyllrb.com/docs/installation/

* Go to the ````_config.yml```` file. On lines 3-6 you'll see lines that are commented out. Do two things:

a. Uncomment line 4 

b. Comment line 6 

Then save the file. The Jekyll build will now run locally, and you'll be able to view it.

* Make git forget about your local `_config.yml` 
In order to make sure you don't mistakenly commit it back with the change in place, and without you having to edit the file everytime you commit, run this:
```
git update-index --assume-unchanged docs/_config.yml
```
If you ever want to commit actual changes to `_config.yml`, then you will have to manually add it to the index with `git add _config.yml`.

## Test before making a pull request 
This is super easy. Two parts: first, test that it looks the way you want it to, and second, push to the master.

### Make sure it looks the way you want it to 

After you've written your post, go to the command line. Go to your cloned Github repo and cd into the ````docs```` folder. (I'm assuming it's in ````~/Github```` here for the sake of example.) 

````
$ cd ~/Github/bela_newBlog/docs
$ bundle exec jekyll serve
````

Now, go to http://localhost:4000 and check that it looks okay. 

###NOW PUSH

Push everything to the master branch, and Github pages will automagically update, recompile, and serve the site. MAGIC!
