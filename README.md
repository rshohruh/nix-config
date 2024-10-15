# 💻 My NixOS Configuration Setup

Welcome to my NixOS configuration repository! This setup is based on the fantastic Misterio77/nix-starter-configs template, designed to help users get started with NixOS configuration in a simple and structured way.
## 📚 Overview

This repository contains my personal configurations for NixOS, organized and managed using the Nix package manager. It's structured in a modular way, making it easy to customize, manage, and extend my system.
## 🌟 Features

- **Declarative System Configuration**: Manage every aspect of the system, from packages to services, all from a single configuration file.
- **Modular Setup**: Organized and split into multiple modules for better maintainability.
- **Multi-User Support**: Configurations for both system-wide settings and individual user profiles.
- **Flakes**: Powered by Nix Flakes for reproducible builds and easier management of dependencies.

## 📁 Repository Structure

The setup follows a modular structure to keep everything organized and easy to maintain. Below is an overview of the key components:

```
├── flake.nix            # Nix Flakes configuration
├── nixos                # System-wide NixOS configurations
│   ├── hardware         # Hardware-specific configurations
│   ├── modules          # Custom NixOS modules (services, tools, etc.)
│   ├── users            # Per-user configurations
│   └── configuration.nix # Main NixOS configuration file
└── home                 # Home-manager configuration for user profiles
```
### Key Files and Directories

- **`flake.nix`**: Defines the entry point for Nix Flakes, with dependencies, system configurations, and more.
- **`nixos/configuration.nix`**: The main configuration file for the system.
- **`nixos/modules/`**: Contains additional Nix modules for configuring services and other system settings.
- **`home/`**: Home-manager configurations for managing user environments, packages, and dotfiles.

## 🚀 Getting Started

To use this setup, follow these steps:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/rshohruh/nixos-config.git
   cd nixos-config
   ```

2. **Install NixOS: Follow the official NixOS installation guide**.

3. **Set Up the System:**

    Link or copy the configuration files to your NixOS installation.
    Run the following to apply the configuration:

    ```bash
    sudo nixos-rebuild switch --flake .
    ```
4. Manage Home Configurations:

    Ensure you have home-manager installed.
    Apply home-manager configurations:

    ```bash
    home-manager switch --flake .
    ```

## ⚙️ Customization

This setup is designed to be modular and easy to extend. Here are a few customization options:

- **System Packages**: Add or remove system-wide packages by editing the `nixos/configuration.nix` file or creating additional modules in `nixos/modules`.
- **User Packages**: Customize user environments by editing the `home/` directory with user-specific packages and configurations.
- **Services**: Enable or disable system services (e.g., SSH, Docker, etc.) in the `nixos/modules` directory.

## 🛠️ Dependencies

- **NixOS**: The Linux distribution with a declarative configuration.
- **Nix**: The package manager used by NixOS.
- **Nix Flakes**: Optional but highly recommended for better dependency management.
- **Home-Manager**: For managing user profiles, including packages, dotfiles, and configurations.

## 📝 Acknowledgements

This configuration is based on the [nix-starter-configs](https://github.com/Misterio77/nix-starter-configs) template by [Misterio77](https://github.com/Misterio77). Special thanks for creating such an easy-to-use and modular starter configuration!

## 🖥️ Screenshots

Feel free to add screenshots of your desktop environment, terminal setup, or any other customizations here.

## 📜 License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more information.

---

Feel free to fork or use this setup as a starting point for your own NixOS configurations. Contributions and suggestions are always welcome!
