class Dpuemu < Formula
  desc "DPU emulator for Project Cobalt local development"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_darwin_arm64.tar.gz"
      sha256 "0903863b0f887a1c77f4c97fc1e656c5f78c52769571d34f4bada096ed6b6cde"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_darwin_amd64.tar.gz"
      sha256 "c7885a9c7b7ea6d243c793e3a95c2c9bcbc1131da2f361b4702c2b8f1cf43b64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_linux_arm64.tar.gz"
      sha256 "89b200708dd1b9553abaccd53c495169d42b37c705dd39fd5eec740ea0c679af"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_linux_amd64.tar.gz"
      sha256 "139e783456f35e68605dba2bcfa74d6f0e5d62a6bf069de62efb346a46807228"
    end
  end

  def install
    bin.install "dpuemu"
  end

  test do
    system "#{bin}/dpuemu", "--help"
  end
end
