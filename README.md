# navidrome instance

This is configuration for my [Navidrome][navidrome] server. Navidrome is a
self-hosted, open source music server and streamer.

## Server setup

### Running the server

The setup requires 2 files to be created:

- `.env`. `.env` can be created with `make .env`. `.env` file stores 2
  environemt variables:
    + `DOCKER_UID`. The host's user ID, it is used to run processes in docker
      container so that the user inside can acccess mounted volumes
    + `DOCKER_GID`. The host's user's group ID, it is used for the same
      purpose.
- `Caddyfile`. `Caddyfile` can be created with `make Caddyfile`. You will be
  asked to provide a host address. I use a [Duck DNS][duckdns] one.

### Adding music

This configuration mounts your `$HOME/Music` directory inside the container. So
put your music to `$HOME/Music/`.

### Creating users

Visit the address you configured for [Caddy][caddy]. You will be prompted to
create an admin user. Then you will be able to create new users.

## Client setup

For iOS I prefer [Minidisc][minidisc]. But [Substreamer][substreamer],
[Shelv][shelv], [AmpSonic][ampsonic] are good alternatives.

For Android I prefer [Tempus][tempus]. But there are a lot of open source
clients, search for one on [f-droid][f-droid-subsonic-search].
[Substreamer][substreamer] is available for Android too.

The setup for all the apps is pretty much the same. It is

- entering the server URL, something like `https://your-sub-domain.duckdns.org`
- etnering a username and a password, which were chosen when creating users

---

[navidrome]: https://www.navidrome.org
[duckdns]: https://www.duckdns.org
[caddy]: https://caddyserver.com
[minidisc]: https://minidisc.dev
[substreamer]: https://substreamer.org
[shelv]: https://vkugler.app
[ampsonic]: https://ampsonic.reserveapps.com
[tempus]: https://eddyizm.github.io/tempus/
[f-droid-subsonic-search]: https://search.f-droid.org/?q=subsonic&lang=en
