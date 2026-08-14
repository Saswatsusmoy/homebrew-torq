class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.12/torq-aarch64-apple-darwin.tar.gz"
      sha256 "f3e2a19bd2786bf757027d28dee0b3e8d73e3e5ddbd888ae6410cf3ffd8ffd5d"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.12/torq-x86_64-apple-darwin.tar.gz"
      sha256 "62716d90aadf063085cf7f6e90afdd7a1b8f5ac4b56e25889aa1cfaebc9accbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.12/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "75e14fb1064773c2d131997d300c22099cd4892e598a1021d41c1b023d18b350"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.12/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "544feab1eb8e1484a64d818746dff4bcab5197d380be3bed05b87a674c4344e6"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
