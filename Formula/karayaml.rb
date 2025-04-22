class Karayaml < Formula
  version "v0.0.1"
  desc "YAML‑powered shortcut launcher for Karabiner‑Elements on macOS"
  homepage "https://github.com/swarupdonepudi/karayaml"
  os_arch = `arch`
  arch = (os_arch.include? "arm64")? "arm64" : "amd64"
  url "https://github.com/swarupdonepudi/karayaml/releases/download/#{version}/karayaml-darwin-#{arch}"
  def install
    os_arch = `arch`
    arch = (os_arch.include? "arm64")? "arm64" : "amd64"
    binary_name="karayaml-#{version}-#{arch}"
    bin.install "#{binary_name}"
    mv bin/"#{binary_name}", bin/"karayaml"
  end
end


