
!! This is a version of bitbucket-to-gogs-migrator by girvo that works with the latest Gitea !!
!! Original README.md below !!

# BitBucket to Gitea Migration Script
This repository holds a simple Node.js script that when executed will find all repositories for a given user or team on BitBucket, and migrate all the repositories found over to the Gitea installation provided.

## Installation
To use `bitbucket-to-gogs-migrator` follow this steps:

    git clone https://github.com/dprandzioch/bitbucket-to-gitea-migrator.git
    cd bitbucket-to-gogs-migrator

To install manually:

    npm install

To install with docker:

    docker build -t bitbucket-to-gogs-migrator .

## Usage
1. Copy the example config file, `cp config.json.example config.json`
2. Now edit the `config.json` file to  provide the Gitea instance URL, Authentication tocken and the owner ID.
4. Also, add the BitBucket username and password, and a team name if you're migrating a team (leave null if not).
5. To begin the migration on manual mode use `npm start` and for docker use `docker run bitbucket-to-gogs-migrator`
6. Go have a tea and biscuit, and wait!
    

## Notes
I have yet to implement `check_exists`, so if there is an existing repository under that user in Gitea, it will likely ignore it and create a new one. It's not asynchronous (I didn't want to DDoS the BitBucket and Gitea servers), so there are some major performance speedups that can be gained by doing so within reason -- feel free to send a pull request through. There is some error checking that isn't as robust as I'd like, but it's fine for the most part; I'd still suggest taking a back-up of your Gitea installation first.

## Author
I (Josh Girvin, also known as girvo) can be found at my website (http://jgirvin.com/), email (josh@ my website address), Twitter (http://twitter.com/girvo) and right here on GitHub.

