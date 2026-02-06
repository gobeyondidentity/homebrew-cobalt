class Nexus < Formula
  desc "Nexus control plane for Project Cobalt"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_darwin_arm64.tar.gz"
      sha256 "e164c14980fea3a2dbd813c530fc8be5d2be3a8476e0e58cb7874d6de99f058a"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_darwin_amd64.tar.gz"
      sha256 "27ef50f8575abfd667913f9a97ab402e80cf576c4dcd76d439fc5fc4f8661d96"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_linux_arm64.tar.gz"
      sha256 "c5483ec07b47048b67b877ca53bcc11a8808b5240c05f93c4ee717f250e0dba7"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/nexus_linux_amd64.tar.gz"
      sha256 "8aa3ddcb2b6ff993f676252f2b42da26cee081674c108df913d16f4f061c684d"
    end
  end

  def install
    bin.install "nexus"
  end

  test do
    system "#{bin}/nexus", "--help"
  end
end
