# Alpha

Alpha is the rebranded Cloudflare Worker network access panel.

- Telegram: https://t.me/V2rayTun0
- Maintainer: @Mehtif
- GitHub: intentionally pending until the owner supplies the final repository URL

## Functional areas preserved

Dashboard and usage cards, user search/filter/sort, direct and quick user creation, protocol and network tabs, proxy pools and proxy testing, subscriptions in text and YAML, status pages, traffic and request limits, automatic proxy rotation, settings, password recovery, backups, PWA install flow, scanner tools, QR/config export, Cloudflare usage information, update/restart controls, and WebSocket forwarding.

## Layout

- `src/alpha-worker.js`: Worker, API routes, UI, subscription generation, and WebSocket forwarding
- `data/edge-ips.txt`: scanner input
- `data/proxies/`: country proxy pools
- `data/vip-proxies/`: VIP proxy pools
- `data/vip-countries.json`: VIP manifest
- `tools/alpha-relay.sh`: relay installer
- `tools/alpha-scanner.txt`: local scanner bundle
- `dist/alpha-worker.bundle.js`: distributable copy
- `docs/`: release metadata

Set `ALPHA_GITHUB_REPO` to the final repository raw-content base URL before enabling repository-backed updates. It is intentionally unset for now.
