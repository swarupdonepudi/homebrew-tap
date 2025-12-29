class Karayaml < Formula
  version "v0.0.14"
  desc "YAML‑powered shortcut launcher for Karabiner‑Elements on macOS"
  homepage "https://github.com/swarupdonepudi/karayaml"
  os_arch = `arch`
  arch = (os_arch.include? "arm64")? "arm64" : "amd64"
  url "https://github.com/swarupdonepudi/karayaml/releases/download/#{version}/karayaml-darwin-#{arch}"
  def install
    os_arch = `arch`
    arch = (os_arch.include? "arm64")? "arm64" : "amd64"
    binary_name="karayaml-darwin-#{arch}"
    bin.install "#{binary_name}"
    mv bin/"#{binary_name}", bin/"karayaml"
  end

  def caveats
    <<~EOS
      Installation Complete!

      karayaml lets you define Karabiner-Elements shortcuts in simple YAML.

      Quick Start

      1. Create your shortcuts config:
         mkdir -p ~/.config/karayaml
         touch ~/.config/karayaml/shortcuts.yaml

      2. Define shortcuts in YAML (example):
         # ~/.config/karayaml/shortcuts.yaml
         shortcuts:
           - from: caps_lock
             to: escape

      3. Generate and apply to Karabiner:
         karayaml apply

      For more commands, run:
         karayaml --help

      Documentation: https://karayaml.dev
    EOS
  end
end
