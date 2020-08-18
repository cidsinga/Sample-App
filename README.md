# Ruby on Rails Tutorial sample application

This is the sample application for
[_Ruby on Rails Tutorial:
Learn Web Development with Rails_](https://www.railstutorial.org/)
(6th Edition)
by [Michael Hartl](https://www.michaelhartl.com/).

## What I learned

I had some experience with Ruby on Rails before working through this project. One particular aspect of Ruby that I grasped more solidly than before are Hashes and the idea of nesting hashes in controller parameters. Understanding Hashes is particularly necessary in order to understanding Strong Parameters, which was implemented to protect against mass assignment security vulnerabilities.

Regarding security, one aspect that I strayed from the curriculum was implementing the use of Rails' Encrypted Secrets. Instead of using a Enviornment Variables and a .env file, I added my Sendgrid and AWS credentials to the credentials.yml.

Another concept I enjoyed becoming familiar with is a join table in postgres. As this app is essentially a Twitter clone, having the ability to have many-to-many relationships was necessary, and the join table streamlined the database.

### Learning is in the friction...

One of my coding mentors made this statement "learning is in the friction". If going through a tutorial is easy because it's all spelled out for you and it just works, you probably aren't going to retain a lot. Working through trouble really helped me gain a more complete understanding in several areas. I was having trouble getting my authentication emails to work in my deployed app. My first suspicion was that my Sendgrid Username and password were incorrect. After inspecting my credentials.yml and comparing it to my Config Vars in Heroku, I did see a descreptancy. After fixing that I still had no luck. After chasing a few other hunches I discovered that Sendgrid's SMTP setup may have changed after this guide was written. It essentially wanted "apikey" as the username, and an actual API Key as the password. While frustrating to work through, it was incredibly rewarding to solve.

Testing to see if Sendgrid was working caused some issues of it's own. Mainly that I needed to send an auth email to an address I had access to. I got very comfortable resetting the database so I could clear out my various failed attempts at sending the emails.

### Possible updates

This leads me to an addition I'd like to add to the app, which is the ability to resend and Auth email for a user. Additionally I'd like to refactor the app to use the Devise Gem for all authentication. The authentication system used in the app was "hand made", but is generic functionality and Devise could easily replace it. Also, Devise has been battle tested by the ruby community, so it’s likely to be more secure.

### Notable Quote

One particular line in this book stood out to me...
“having a good test suite will allow us to refactor our code with confidence, changing its form without changing its function.”

## License

All source code in the [Ruby on Rails Tutorial](https://www.railstutorial.org/)
is available jointly under the MIT License and the Beerware License. See
[LICENSE.md](LICENSE.md) for details.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[_Ruby on Rails Tutorial_ book](https://www.railstutorial.org/book).
