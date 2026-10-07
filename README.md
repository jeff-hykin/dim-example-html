# dim-example-html

A showcase [dimOS Desktop](https://github.com/jeff-hykin/dimos-desktop-mirror) app: just static files, no server. It shows how to:

- subscribe to a dimos topic and decode it (`/odom`, a `geometry_msgs.PoseStamped`, via zenoh-web + [@dimos/msgs](https://jsr.io/@dimos/msgs))
- publish one (`/cmd_vel`, a `geometry_msgs.Twist`, with a deadman)
- call the dimos gateway (`GET /dimos/runs`) and another app's public endpoint (`GET /apps/dim-controller/api/status`)
- post a Desktop notification and open another app


Read **[GUIDE.md](GUIDE.md)** for how dimOS apps work. The other examples:
[plain HTML](https://github.com/jeff-hykin/dim-example-html) ·
[Deno](https://github.com/jeff-hykin/dim-example-deno) ·
[Rust](https://github.com/jeff-hykin/dim-example-rust).

## Install it

Desktop → App Store → **Install From URL** → `github.com/jeff-hykin/dim-example-html`.

## Files

- `dimos.yaml`: the contract with Desktop (what it calls, what it offers)
- `icon.svg`: its icon
- `flake.nix`: `nix build .#dimosApp` is what Desktop runs
- `frontend/`: the page (`index.html`, `app.js`, `style.css`)

