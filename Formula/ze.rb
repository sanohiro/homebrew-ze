# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-macos-aarch64.tar.gz"
      sha256 "b6d426ff3b5c8b26850291759624722a158b8c448e1b6ab43240e02e0658b57a"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-macos-x86_64.tar.gz"
      sha256 "f5e39903e61ca810e80ef3d1553571c0680f70f34818ce0598fb34d9abdec850"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-linux-aarch64.tar.gz"
      sha256 "f9460930ed8a1b74ce69f8484552fc23217fc062e2f76a42de050df9edcb2b69"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.2/ze-linux-x86_64.tar.gz"
      sha256 "8d3304d3af87baa3cad1144517e55031e5ef735e0200172834e03d548ac987f9"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
