class Sentry < Formula
  desc "Sentry host agent for Project Cobalt attestation"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_darwin_arm64.tar.gz"
      sha256 "438b92b8c007fdcbc8553c22ebe00ff69a1bd02d75feb029a1238ae6ed0f194b"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_darwin_amd64.tar.gz"
      sha256 "f9240be53f2ef6d3c75e03623e84d67be3f75f7854d193ce38a9b96a49525f1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_linux_arm64.tar.gz"
      sha256 "da70e6e3ca9888b49b4c2db5d381ecae54154f88c18ecdebcdc4d901f8163d08"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_linux_amd64.tar.gz"
      sha256 "54b7974ad346b555a3082e475b792315ce968a6041efca42aa37a7fce2fbf3ea"
    end
  end

  def install
    bin.install "sentry"
  end

  test do
    system "#{bin}/sentry", "--help"
  end
end
