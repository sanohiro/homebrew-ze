# typed: false
# frozen_string_literal: true

class Ze < Formula
  desc "Fast, minimal text editor with Emacs keybindings"
  homepage "https://github.com/sanohiro/ze"
  version "1.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.5/ze-macos-aarch64.tar.gz"
      sha256 "1205b47abd70a55495d22105f528c6b592f40e7a1d5a372278cb7b9a827485ee"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.5/ze-macos-x86_64.tar.gz"
      sha256 "19f319b55471421de686d6221d35bdae6ed26f39612d4392bf18ea8d0a20f731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.5/ze-linux-aarch64.tar.gz"
      sha256 "eba70417ca0e58cafc12e726bf95bdd14592569482941d6868eb5aeb237c68b4"
    end
    on_intel do
      url "https://github.com/sanohiro/ze/releases/download/v1.3.5/ze-linux-x86_64.tar.gz"
      sha256 "51e72d83a3e5875ff4bb0009cccd37c833e121e2e928a701f74a0c6ad6276030"
    end
  end

  def install
    bin.install "ze"
  end

  test do
    assert_match "ze #{version}", shell_output("#{bin}/ze --version")
  end
end
