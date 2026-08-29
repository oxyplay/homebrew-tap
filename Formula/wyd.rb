class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.1/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "ee1cdcefd4edb0e28e224a1e2fcdd8d70ab3c79fdf76349587783d141265b227"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.1/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "d4040b1fe3b8e81c90496c7a3dbb95521e11692e08d92eefc5db14d75f57ebb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.1/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5a0da545582b4fe71a828ffcb182a2153bbb6f19cda0de933f94a0eb5e8506c"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.8.1/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22ea092eb069de49c79dc851994fc4cc99bb18a360b70862197080e7066446fd"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
