# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+9cfafe3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "2114ab9544ea86f5d1c790f37f7b103246a3cf54c0f0f2ead3822d1e5c3aa380"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "77e4b508a2e1b897b0f38eb3e9dfb0d9979c834f0f4cea5a7b709b7fe32cefc0"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "303899adb1bfdc58fff91bf464b63c4de3f52e819ae7560325c4576f5c7d9c51"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "5a96fefa2d8df63f1b439f3d31ebe8cd4881ef4ca9ca7ee9022b7cd7b0e81a0b"

      def install
        bin.install "tis"
      end
    end
  end
end
