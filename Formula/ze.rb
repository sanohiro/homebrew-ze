# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.3/ze-macos-aarch64.tar.gz"
      sha256 "9257045a8c5c89add00030ff6cf3942aca299e93161f8eddc549e2a8849b8a79"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.3/ze-macos-x86_64.tar.gz"
      sha256 "541b96a00e5faeacabd92009f0e32c24acda4c8e1a11f0c99b8d50bc04d24989"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.3/ze-linux-aarch64.tar.gz"
      sha256 "d77cf95264af696071ecde0912dcaf0c8ee34b0dd7d5704322cfc6539179ba62"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.3/ze-linux-x86_64.tar.gz"
      sha256 "77e341d856d857e5634e2c99cd6ac9829131c99e5588ff7fda27d1e6b4e8a25b"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
