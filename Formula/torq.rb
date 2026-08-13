class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.11/torq-aarch64-apple-darwin.tar.gz"
      sha256 "4b28a5da9e0b743ff6ff8a4068d685d4fc7570de37a1190c45379014ab33cd1c"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.11/torq-x86_64-apple-darwin.tar.gz"
      sha256 "0042803c82f14347ec010a3ebb66332e51b33d579d8e8fb44f75e242383f6558"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.11/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a12fc98ba3cb751f0db7e18cd61f73ff97fa4402bd2db1a4be4768c30c703d41"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.11/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ec85cf5e4201ff8e7df83b0960053fe751dab31beb82f5b37b311188501724ea"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
