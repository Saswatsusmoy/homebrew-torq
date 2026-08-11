class Torq < Formula
  desc "Fast torrent finder and downloader"
  homepage "https://github.com/Saswatsusmoy/TorQ"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.2/torq-aarch64-apple-darwin.tar.gz"
      sha256 "1a2f79400d13c59a9a380c2e5dcb34a03a4b938ce3772432fcded13b07f691a1"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.2/torq-x86_64-apple-darwin.tar.gz"
      sha256 "249551c310f7606dabd98bb68a43488d15b23b07093016b422e484832826eaff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.2/torq-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b7ce7017e3d16b832a02bedec888b31f2fb7f35311ccf8487583306ffbdd29f6"
    else
      url "https://github.com/Saswatsusmoy/TorQ/releases/download/v0.1.2/torq-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e47d39a949ed310e2235b4fa5d915f3ddd6fdb66b14504e0fcd6708bfe128574"
    end
  end

  def install
    bin.install "torq"
  end

  test do
    assert_match "torq", shell_output("#{bin}/torq --version")
  end
end
