class Bluectl < Formula
  desc "CLI for managing BlueField DPUs via Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_darwin_arm64.tar.gz"
      sha256 "31258009d95fee8dfea61b547ee8164f96a8e9718eea633ed0a41854be322fad"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_darwin_amd64.tar.gz"
      sha256 "3193bcc6be583afac328d5e74528b47b8610f22eca955e7d0b5eaa050fe56b5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_linux_arm64.tar.gz"
      sha256 "ec362f656d05887722854d40a62d3fdd959fde6f61e3e39a8179a71e13803660"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/bluectl_linux_amd64.tar.gz"
      sha256 "8adddb978a66845991ae7b5cd160b4f8295abc1f82dce5017101a9a43f461964"
    end
  end

  def install
    bin.install "bluectl"
  end

  test do
    system "#{bin}/bluectl", "--help"
  end
end
