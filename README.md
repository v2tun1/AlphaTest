# Alpha Panel

Cloudflare Workers + D1 network access panel, branded for **Alpha**.

Telegram: https://t.me/V2rayTun0  
Maintainer: @Mehtif  
GitHub: configure the final repository URL in `ALPHA_GITHUB_REPO` after creation.

## Deploy

1. Create a D1 database named `alpha-panel-db` and copy its ID into `wrangler.toml`.
2. Run `npm install`.
3. Run `npm run db:migrate:remote`.
4. Add secrets: `wrangler secret put CF_API_TOKEN` and `wrangler secret put CF_ACCOUNT_ID`.
5. Run `npm run check`, then `npm run deploy`.

The Worker creates any later schema columns it needs on startup. Never commit Cloudflare tokens, proxy credentials, or a real database ID.

## Layout

`src/alpha-worker.js` is the Worker and live panel. `migrations/` contains D1 schema. `data/` contains scanner and proxy pools. `tools/` contains the relay and local scanner. `dist/` contains the distributable copy.
