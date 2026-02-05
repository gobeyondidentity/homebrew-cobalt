class Bluectl < Formula
  desc "CLI for managing BlueField DPUs via Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_darwin_arm64.tar.gz"
      sha256 "e91d4c170c23a21f55d5d01629e8199c7ec697ab3001452dc2ad3307633d610c"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_darwin_amd64.tar.gz"
      sha256 "d25f1ead7b5d47afefe0733c797a158ddd5e9b7920cdc8242b9e7adc75c71609"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_linux_arm64.tar.gz"
      sha256 "d00b99cd8daadf507790cb8ff892e60f3ee60034194551c5a392a987a6190435"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_linux_amd64.tar.gz"
      sha256 "88d41ea935701849f6c2d08d697cdeadc7f7bea812c1c8395330dfbff0785b96"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    system "#{bin}/bluectl", "--help"
  end
end
