# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.0/ze-macos-aarch64.tar.gz"
      sha256 "8452afc3488270270b743cff95061ed6ea9828b1334829f4d02b858c414ae7de"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.0/ze-macos-x86_64.tar.gz"
      sha256 "80efa6f75d002fcdd8bf5c6d597e1d05f7bb3fcfa920d36ae77b72d6cfc12584"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.0/ze-linux-aarch64.tar.gz"
      sha256 "bef21ff8448a35b5f372d1336ca0c569df10e1dc72569f4aa618026b82fc0419"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.0/ze-linux-x86_64.tar.gz"
      sha256 "2df601db58b959c1a5d052b141c18172c4d9f0142153ccb79b3a4227c9585c84"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
