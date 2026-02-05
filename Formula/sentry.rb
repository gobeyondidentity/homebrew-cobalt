class Sentry < Formula
  desc "Sentry host agent for Project Cobalt attestation"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_darwin_arm64.tar.gz"
      sha256 "83f6b631bd53c3d3edcb5f4dde328badb45728295e05febd7e468337e000dbcf"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_darwin_amd64.tar.gz"
      sha256 "ce04f423942912afbadf6881e69c835099059fbf887df3912df6ae70ef19a64b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_linux_arm64.tar.gz"
      sha256 "9f4b9617a2dccbc41c6f1e76cf15449b347ce1576c6dff3cf491c9f8c77a046f"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/sentry_linux_amd64.tar.gz"
      sha256 "2af41b9bf06f47ee2921546786cae4895bf4ae6a99923a0647b8d1a195aa260f"
    end
  end

  def install
    bin.install "sentry"
  end

  test do
    system "#{bin}/sentry", "--help"
  end
end
