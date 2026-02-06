class Bluectl < Formula
  desc "CLI for managing BlueField DPUs via Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_darwin_arm64.tar.gz"
      sha256 "afc1eab05ea459f9cde15021d2e4ea86979007cc52984d7e1714759e7e1a102a"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_darwin_amd64.tar.gz"
      sha256 "28bc23546957682320c41a806dffc871d17a24ed87303ed029e134a19a173acf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_linux_arm64.tar.gz"
      sha256 "bcd1687a742b6c8a5fc83b792b433dde2067ae2de9286707482737c0a9c47ea4"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_linux_amd64.tar.gz"
      sha256 "819ccc9afec0a25b9c21e90561bb1ce068ebf8c1ea1a94cd3e2cdf89f26b5825"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    system "#{bin}/bluectl", "--help"
  end
end
