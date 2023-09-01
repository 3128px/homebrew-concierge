# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+24d0e9d"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "cc430a29745034d162b708bee999c0b5b601224a3a80e8a189566e6ac5fccc3c"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "40daee0b312df41f4abc6e988e8fca563a179d4b53ddf85f2098de631b3f48cd"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "743cdae1992fd099c0a9971c8d4b78d9e10e2001bf9ebeed546d68f78c437794"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "509dfb98009cfced2d882b2a6dca4c38d5c66a26f31ccd3b721d15335d21b605"

      def install
        bin.install "tis"
      end
    end
  end
end
