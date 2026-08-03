{ ... }:

{
  nix.enable = true;
  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "x86_64-darwin";

  system.primaryUser = "rutomo";
  users.users.rutomo = {
    home = "/Users/rutomo";
  };
  system.stateVersion = 6;
  system.defaults = {
    NSGlobalDomain = {
      AppleInterfaceStyle = "Dark";
      KeyRepeat = 2;          # fast key repeat
      InitialKeyRepeat = 15;  # short delay before repeat
      _HIHideMenuBar = true;  # auto-hide the menu bar
      AppleShowAllExtensions = true;
    };
    dock.autohide = true;
    finder.FXPreferredViewStyle = "Nlsv";  # list view by default
    finder.CreateDesktop = false;          # clean desktop
    trackpad.Clicking = true;              # tap to click
  };
  nix-homebrew = {
    enable = true;
    user = "rutomo";
    autoMigrate = true;
  };
  homebrew = {
    enable = true;
    onActivation.cleanup = "zap";  # remove anything not listed here
    onActivation.autoUpdate = true;
    onActivation.extraFlags = [ "--force" ];
    taps = [
      "fluxcd/tap"
      "jorgelbg/tap"
      "siderolabs/tap"
    ];
    brews = [
      "herdr"
      "actionlint"
      "age"
      "autoconf"
      "bitwarden-cli"
      "brotli"
      "bzip2"
      "c-ares"
      "ca-certificates"
      "coreutils"
      "curl"
      "flux"
      "gettext"
      "gh"
      "git"
      "gmp"
      "gnupg"
      "gnutls"
      "gpgme"
      "herdr"
      "icu4c@77"
      "kubeconform"
      "kubectl"
      "kubeseal"
      "libassuan"
      "libevent"
      "libgcrypt"
      "libgpg-error"
      "libidn2"
      "libksba"
      "libnghttp2"
      "libssh2"
      "libtasn1"
      "libtommath"
      "libunistring"
      "libusb"
      "libuv"
      "lz4"
      "m4"
      "nettle"
      "node"
      "npth"
      "openssl@3"
      "p11-kit"
      "pcre2"
      "pinentry"
      "pkgconf"
      "pyenv"
      "readline"
      "rtmpdump"
      "shellcheck"
      "skopeo"
      "sops"
      "sqlite"
      "talosctl"
      "tcl-tk"
      "unbound"
      "xz"
      "zlib"
      "zstd"
    ];
    casks = [
      "wezterm"
      "claude-code"
    ];
  };
}