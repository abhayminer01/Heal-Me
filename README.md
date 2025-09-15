# Simple ESX Heal Command

A lightweight FiveM script for ESX servers that allows players to heal themselves using the `/healme` command.
The command costs in-game money, which is configurable via `config.lua`.
<hr />

## ✨ Features

- `/healme` command heals the player to full health.

- Deducts money from player’s wallet (configurable).

- Sends ESX notifications for success/failure.

- Easy to customize and expand.



## 📂 File Structure
```arduino
my-heal-script/
│
├── client.lua
├── server.lua
├── config.lua
└── fxmanifest.lua
```
## ⚙️ Installation

1. Clone or download this repository.

2. Place the folder in your server’s `resources` directory.

3. Add the following line to your `server.cfg`:
```lua
ensure my-heal-script
```

## 🔧 Configuration

Open `config.lua` to change settings:
```lua
Config = {}

Config.HealPrice = 500      -- Cost for using /healme
Config.MaxHealth = 200      -- Max health after healing

```

## 📜 Usage

In-game, simply type:
```bash
/healme
```

- If you have enough money → your character is healed.

- If not → you get a "not enough money" notification.


## 🛠️ Requirements

`ESX Framework`

## Future Enhancements
- Report issues or request upgrades. Contributions are also welcome.
