# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.4/ze-macos-aarch64.tar.gz"
      sha256 "7d4562a52e297f167e53777b9fc2e0785fc4e71b9eb6b6ac2baf7fdb8f6d7808"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.4/ze-macos-x86_64.tar.gz"
      sha256 "cbb73b489c8950e7ea66a164464d0fb71b5f8719028b5ed87418d38aa2aed98d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.4/ze-linux-aarch64.tar.gz"
      sha256 "bfdb8fa0ee3ee6253ed3159534f9162ca29a2080fbd6fd56a79eb4115ff34b0b"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.1.4/ze-linux-x86_64.tar.gz"
      sha256 "2681b29d8efeea61d97014cee334b120f0f8d4d0fd82cc6e0bdd174aa56313fa"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
