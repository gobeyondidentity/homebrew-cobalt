class Sentry < Formula
  desc "Sentry host agent for Project Cobalt attestation"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_darwin_arm64.tar.gz"
      sha256 "e07b23fa3173140b98a9370499745cb811ec85c73641af7f543b244c6aa4d213"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_darwin_amd64.tar.gz"
      sha256 "7a2b1fe8fdba0da5005f1f9d4b0d2fb047496720ece41d958435eada4b4d63fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_linux_arm64.tar.gz"
      sha256 "fc2d28de98171f9d61588d22d03cfc56f0aa752227510b08d2869d81e9856b07"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_linux_amd64.tar.gz"
      sha256 "93fa6b3f29bc1a7b41db667d9dda9433e3d6f7c6f266b42c3247fc3e144b9b0d"
    end
  end

  def install
    bin.install "sentry"
  end

  test do
    system "#{bin}/sentry", "--help"
  end
end
