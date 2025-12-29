class Gitr < Formula
  version "v1.0.1"
  desc "gitr: git rapid - save time(a ton) by opening git repos on web right from the command line"
  homepage "https://github.com/swarupdonepudi/gitr"
  os_arch = `arch`
  arch = (os_arch.include? "arm64")? "arm64" : "amd64"
  url "https://github.com/swarupdonepudi/gitr/releases/download/#{version}/gitr-darwin-#{arch}"
  def install
    os_arch = `arch`
    arch = (os_arch.include? "arm64")? "arm64" : "amd64"
    binary_name="gitr-darwin-#{arch}"
    bin.install "#{binary_name}"
    mv bin/"#{binary_name}", bin/"gitr"
  end

  def caveats
    <<~EOS
      Installation Complete!

      gitr helps you open git repositories in your browser instantly.

      Quick Start

      1. Navigate to any git repository:
         cd ~/your-project

      2. Open the repo in your browser:
         gitr

      3. Open a specific page:
         gitr pulls     # Pull requests
         gitr issues    # Issues
         gitr actions   # GitHub Actions

      4. Clone any repo with a short URL:
         gitr clone gh/owner/repo

      For more commands, run:
         gitr --help

      Documentation: https://gitr.dev
    EOS
  end
end

