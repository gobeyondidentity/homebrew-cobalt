class Dpuemu < Formula
  desc "DPU emulator for Project Cobalt local development"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_darwin_arm64.tar.gz"
      sha256 "10ceb98cd31a1ec1c3bd912ff142bf579050b52f71c6efd1ff67d7745644eaa5"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_darwin_amd64.tar.gz"
      sha256 "1ca6ad79684e6a2c4af25a41d1896780ce02167ddbf4fd9417b0b2cb0a2a52b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_linux_arm64.tar.gz"
      sha256 "9274ab2dbef8a49c27ee775b416b47af7175f690ff05fb157922a4bcecf90322"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_linux_amd64.tar.gz"
      sha256 "4e1ca82ddba4df460c280523c4d83b57e6933eb8ea4f6537268971e331786797"
    end
  end

  def install
    bin.install "dpuemu"
  end

  test do
    system "#{bin}/dpuemu", "--help"
  end
end
