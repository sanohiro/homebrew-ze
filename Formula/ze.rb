# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.1/ze-macos-aarch64.tar.gz"
      sha256 "2c70348f2a4e31ab859d3c06d868c7d37b653b1881c070438258151c9f92180e"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.1/ze-macos-x86_64.tar.gz"
      sha256 "d2cd5fd6edd9eaf56137b15c1378b15234d91126852e0ac4c611077fb98fe2b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.1/ze-linux-aarch64.tar.gz"
      sha256 "12642b0e2f9f972584cc57dff8043673033af15b2429969fca6efe7fb6211d07"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.4.1/ze-linux-x86_64.tar.gz"
      sha256 "0f9f19e689862718764684d481ce777df28951fb681eb33da4b8b3f6259ce467"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
