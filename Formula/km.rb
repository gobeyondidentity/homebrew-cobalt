class Km < Formula
  desc "Key management CLI for Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_darwin_arm64.tar.gz"
      sha256 "5011ef307f7bc1a3d279cd6da797744013f0cdd95e75e899ef49fb3458ad7367"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_darwin_amd64.tar.gz"
      sha256 "5fe7492275e8b0546959583255248623d67603f1cb7092b884d1ada158b82eca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_linux_arm64.tar.gz"
      sha256 "5d524ff243a32b547c2a50e2778735f149288f8ba11e54b3d4eb0d11180a6f74"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/km_linux_amd64.tar.gz"
      sha256 "45a6ba46178305387412312333d9cb924dfe5001fb5d410ec9a5ed001bbd6c06"
    end
  end

  def install
    bin.install "km"
  end

  test do
    system "#{bin}/km", "--help"
  end
end
