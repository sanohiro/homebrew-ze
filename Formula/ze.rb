# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.1/ze-macos-aarch64.tar.gz"
      sha256 "a92cfc8c020ace79a4b6ad3e30bbb521043ca00bb7af26ef662148f3d9a51730"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.1/ze-macos-x86_64.tar.gz"
      sha256 "6e2c304f5f04d9ac6244c9324775c1789ae4a003db34d1ac8f31e8111e41487b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.1/ze-linux-aarch64.tar.gz"
      sha256 "c6d17ac8a0be9b59018783dbd7758b5c03d106954c5e2588fef42bec31459a89"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.2.1/ze-linux-x86_64.tar.gz"
      sha256 "cfd6dd00a28b0c10134119a29f03e9a51a0de20f70be42bda26aab0f5c28da34"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
