# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.3/ze-macos-aarch64.tar.gz"
      sha256 "9a4a3a439b1ddc3cfefb41206f020f7593fbf7cdc94ed22ede11b0605ce0cf4c"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.3/ze-macos-x86_64.tar.gz"
      sha256 "2d3836880c78f1fae810afa258622d9e8761d8b104fb17c62e3d391b4e12d4d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.3/ze-linux-aarch64.tar.gz"
      sha256 "f04cd5637ae650cddab58e4e40f3bf6ac397aaf7d820ac7421bd1ed44fe77dc2"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.3/ze-linux-x86_64.tar.gz"
      sha256 "9b982c86620f0cba50576203a0926c9245bf9a4cf00e369759e8e57d755cd320"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
