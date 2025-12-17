# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.6/ze-macos-aarch64.tar.gz"
      sha256 "5b307c71fddc3b58a60e2f24c98927b60f70db30fc5dbb94142734538c832547"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.6/ze-macos-x86_64.tar.gz"
      sha256 "ad9e87db4f16743d2f3a291043d0b6da77d29c3672405b93b4f00f44d6a16590"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.6/ze-linux-aarch64.tar.gz"
      sha256 "6d0b60e11caee82bf3873a95ef8ef86dbe99777996e42cda53992376c30fd3c7"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.0.6/ze-linux-x86_64.tar.gz"
      sha256 "652acbde1d94ee92d6fb12af65fdf05fcc97fa3960ad136c387ffc5443a09497"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
