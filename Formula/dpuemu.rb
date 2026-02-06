class Dpuemu < Formula
  desc "DPU emulator for Project Cobalt local development"
  homepage "https://github.com/gobeyondidentity/cobalt"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_darwin_arm64.tar.gz"
      sha256 "cfeded7f599e4aff84fc72b27faf6d842938f6e7ac2664378f397e44fc4c8166"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_darwin_amd64.tar.gz"
      sha256 "f9107957fde0fa452235db965c19ab86e443c961c5998dee2f45d87348e3c5d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_linux_arm64.tar.gz"
      sha256 "d8d7b085625666889042b0c8e5c9894d7637c7a81e1e88a22358d0c350b45791"
    end
    on_intel do
      url "https://github.com/gobeyondidentity/cobalt/releases/download/v0.7.0/dpuemu_linux_amd64.tar.gz"
      sha256 "e1ea9c326e3b8c5a5eba468876fb562448d1ed48a3ed6694e144cb79b911aacf"
    end
  end

  def install
    bin.install "dpuemu"
  end

  test do
    system "#{bin}/dpuemu", "--help"
  end
end
