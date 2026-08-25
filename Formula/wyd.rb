class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://github.com/oxyplay/wyd"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.1/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "32b44c37dc453cb049a3db2e7d18927ed281af721b956a4b452d77e82f7c4af0"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.1/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "35e456cce001ae2ca253f361223e14376caa334b2fd7bcaf3e9ff16ab07188b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.1/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4f58027be2bd8671e7ddb27865218bd8c2e4f1b922e40d67f94feb89f7bacf26"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.4.1/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb7cf07a423c3aacbc663975a93198ec3d9a2404c7a061975a016af8ca2c37eb"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
