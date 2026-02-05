class Km < Formula
  desc "Key management CLI for Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_darwin_arm64.tar.gz"
      sha256 "f3efed4f9894ccaac85c2161f8f3d76f0573fac947654bd456489fe9d461977e"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_darwin_amd64.tar.gz"
      sha256 "97c53ca276c8576ec41b0b532a678235bd553bc3bb6f99651e136c88e3b2ae04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_linux_arm64.tar.gz"
      sha256 "c211f0be75f03978177fd0aa5d968102cf20db2575225888dda10f5eadacbae8"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_linux_amd64.tar.gz"
      sha256 "be09df3e3d3bedce6b0a403a6f57fde34fccd387ca3d8aed0c468c19c2cb6fd3"
    end
  end

  def install
    bin.install "km"
  end

  test do
    system "#{bin}/km", "--help"
  end
end
