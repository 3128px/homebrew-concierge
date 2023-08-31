# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+2624d7f"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "<no value>"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "<no value>"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "<no value>"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "<no value>"

      def install
        bin.install "tis"
      end
    end
  end
end
