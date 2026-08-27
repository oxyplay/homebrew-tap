class Wyd < Formula
  desc "See what your AI agents and dev tools left running"
  homepage "https://wyd.sh"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.0/wyd-aarch64-apple-darwin.tar.gz"
      sha256 "4d18cb07dfcd3d3ad6a001490df024a60b029a47c79fcb52fc9624646f831c86"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.0/wyd-x86_64-apple-darwin.tar.gz"
      sha256 "f4b6ce68f6bf54a6ed954054626a2fb0af62b04a377056e5fdeb6987a0463e1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.0/wyd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a8ef15ceb314b248c483f81cd719484f1e132f5196e7536e9aa02a155259345"
    end
    on_intel do
      url "https://github.com/oxyplay/wyd/releases/download/v0.7.0/wyd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56d55dfd9270796a688c94eeea1e44a4bc88b81899025289f1edf7bd3913c56c"
    end
  end

  def install
    bin.install "wyd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wyd --version")
  end
end
