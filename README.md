# dim-example-html

A showcase [dimOS Desktop](https://github.com/jeff-hykin/dimos-desktop-mirror) app: one HTML file, no server. It shows how to:

- subscribe to a dimos topic and decode it (`/odom`, a `geometry_msgs.PoseStamped`, via zenoh-gateway + the dimos gateway's `/dimos/msgs.js`)
- publish one (`/cmd_vel`, a `geometry_msgs.Twist`, with a deadman)
- call the dimos gateway (`GET /dimos/runs`) and another app's public endpoint (`GET /apps/dim-controller/api/status`)
- post a Desktop notification and open another app


Read **[Making a dimOS app](https://github.com/jeff-hykin/dimos-desktop-mirror/blob/main/docs/create-apps/index.md)** (in the dimOS Desktop repo) for how dimOS apps work. The other examples:
[simple-html](https://github.com/jeff-hykin/dim-example-html) ·
[deno-server: React, Vite, Deno](https://github.com/jeff-hykin/dim-example-deno) ·
[Rust server](https://github.com/jeff-hykin/dim-example-rust).

## Install it

Desktop → App Store → **Install From URL** → `github.com/jeff-hykin/dim-example-html`.

## Files

- `dimos.yaml`: the contract with Desktop (what it calls, what it offers)
- `icon.svg`: its icon
- `flake.nix`: `nix build .#dimosApp` is what Desktop runs
- `index.html`: the whole app (its style and script inline)

