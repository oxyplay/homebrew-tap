class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.9.0/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "2443d7748733046a08a954aa07d076c011097f8d1c4156e96efa5649c06ac5ff"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.9.0/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "7468fc3b2ce4e94c50cd1433759a0ba970cd2c49e63bf8e928b7b45d0fdd4d3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.9.0/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1cf46efbead09ade7671169f1f446b9ce0212d8a4f8ae18fc2fdbefb24c0245f"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.9.0/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab7af338d8f1017597aab2dc67952d421a34d23387cfa85806f66778515575b6"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
