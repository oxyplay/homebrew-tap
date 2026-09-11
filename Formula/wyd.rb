class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.10.0/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "be127b3a1fc3d7bb45022452e51eaf22131a012e70b89957c313efec060a877c"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.10.0/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "28b630fb042e08c065bc2ca5809e37df69d62aef0a286b70fb9b3d3799c4b543"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.10.0/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f4f22c404c845ae64ab6f5951133bbab645e0541b36b57a616a8abf5faa4a8bb"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.10.0/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fcf7a0b32c51be866ad552c4d2620205b2d571887eaba0c33fc93485166856f"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
