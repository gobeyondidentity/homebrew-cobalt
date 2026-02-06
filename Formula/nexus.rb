class Nexus < Formula
  desc "Nexus control plane for Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_darwin_arm64.tar.gz"
      sha256 "ad3fd50cc87b00030357aada47e687870f8a8720296ca4297f0c90abbe40ada0"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_darwin_amd64.tar.gz"
      sha256 "9aaddd8eb03f6819cf93c62824324cad9e9fdb170f8cd49a24531eecce63f3ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_linux_arm64.tar.gz"
      sha256 "195cf21c4bd899b72ee203d0a526786e16c013665204e5e89eab74ed6eb17a70"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_linux_amd64.tar.gz"
      sha256 "1d2066c488d18dfa6015bd4106a46fcdc9880df726af5fd69e3970766a706ccc"
    end
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus", "--help"
  end
end
