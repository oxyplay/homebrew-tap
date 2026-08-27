class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.1/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "c42353d45dff0b9214b9787bbf88b45651467a025e0ddf5b11f2018f5408d270"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.1/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "68470d5d492203041e46293a8451e0ed7c28721c57ded92211a79ae34071eefb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.1/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c3da6bb6b8cc8ccb66e1bbbf43d3f599bee7926c2622b44808fe4c057e16561"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.1/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c30af73de37a403c695a9f6549a273c9347677a2020e213959f39a7d4b3681b1"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
