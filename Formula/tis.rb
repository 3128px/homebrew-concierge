# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+5fe6d66"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "2a4e4dcc470e2cd7a6472eb30fb6fec0ca5da7212be63d340776a66bd3aa7346"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "f05b302d1a2df0defe15fd7973ac0dcfd4623c42a5843512a7869c8bdfc6b20d"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "9659aaac0048a87c1aae38534a9c8d27f0dcd80e7ef03a00b516f6b1692df965"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "6d7345175ac1707a87165aa5c3559eb44aae64f5aa2ec27a884b5fb8fbc020ec"

      def install
        bin.install "tis"
      end
    end
  end
end
