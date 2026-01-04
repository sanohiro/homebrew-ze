# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.2/ze-macos-aarch64.tar.gz"
      sha256 "c4db0926b2dde9c6b2b357265a33f1b49e152fdae8ab6f7a8e94dfb0db6121a6"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.2/ze-macos-x86_64.tar.gz"
      sha256 "aee0ed67b99adf26ee8f088998eed62ba86760ef622c5c685750ef6c2014e03e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.2/ze-linux-aarch64.tar.gz"
      sha256 "35ddb2aca3a6d51c1913d632e54c5ad4e3d1dcb75ca732c36ba11bb9b70da775"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.2/ze-linux-x86_64.tar.gz"
      sha256 "f5337670f519e5d1bca34def861bfe57242e3c47e2a0510fc78fa59a1865cfa7"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
