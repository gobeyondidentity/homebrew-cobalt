class Km < Formula
  desc "Key management CLI for Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_darwin_arm64.tar.gz"
      sha256 "a5b0b45dcf42c04f04164d800542895089fe97c781ee0d976487bbd8532d2132"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_darwin_amd64.tar.gz"
      sha256 "0ad7b6f848088d669d25bee4822fe2a273b5bcd5006af66dda90476fe31ea11a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_linux_arm64.tar.gz"
      sha256 "1e867ca3c8909d1068a2221f0827e2913218de8a060f53675b7c786fdd215dc0"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_linux_amd64.tar.gz"
      sha256 "0795e6b53536ea31ecac0d6a03db254f59c06d3945222ce1273db2e37c968dc7"
    end
  end

  def install
    bin.install "km"
  end

  test do
    system "#{bin}/km", "--help"
  end
end
