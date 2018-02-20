## Welcome To My Life Socks.

This is the Rails backend for My Life Socks, currently a work in progress!

![Socks Gif](https://media.giphy.com/media/1Ajjem96UdnarPVl8T/giphy.gif)

The repository for the frontend can be found here: <a href="https://github.com/colesayer/sock_dev_frontend">https://github.com/colesayer/sock_dev_frontend</a>.

### Description
My Life Socks is a product customization and visualization tool utilizing the power of WebGL. It is being built for my friend's sock company in North Carolina. Eventually, it will be a tool on their product's web site.

In its current state, a user can choose a sock construction (crew and extended crew for now), pick the heel, toe, and top band colors, choose a pre-made design or upload a design of their own, and choose the type of knit. The app updates the 3d model in real time, giving the user a photo-realistic-ish 3d representation of the sock they're creating. Many new features will be added soon.

### Built with
* Ruby on Rails
* Images stored on Cloudinary

### How to Run

1.  Clone the repo
2.  Change to the cloned directory from your terminal
3.  Run 'bundle install'
4.  Make sure <a href="https://www.postgresql.org/">PostgreSQL</a> is installed and running.
5.  Run 'rake db:create' and 'rake db:migrate'
5.  Run 'rails s'.  The api will run on http://localhost:3000/ by default
6.  Go to the <a href="https://github.com/colesayer/sock_dev_frontend">My Life Socks Frontend</a> to complete the steps.
