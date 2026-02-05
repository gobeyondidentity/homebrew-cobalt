class Nexus < Formula
  desc "Nexus control plane for Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_darwin_arm64.tar.gz"
      sha256 "4e089bcf0e3bc7354a6ba953fe5fb399bd91f30073557fedab33c4a44fed388d"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_darwin_amd64.tar.gz"
      sha256 "19be0e7caf5bbb701b0265502c8a391f6b1edead2cecf2e8b5e9526abe3d725b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_linux_arm64.tar.gz"
      sha256 "7f8e07aac53d974974bc31c792023fe6c11aa9208a9f121e84d385fb304f1615"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_linux_amd64.tar.gz"
      sha256 "2df895648910635e543decce2f8e51f30bc5cd499acd396cc17a0ffa4ea46115"
    end
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus", "--help"
  end
end
