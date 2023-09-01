# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+98836f1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "b824cad422f6fc04c2ff74153fff2b78db661e0e8ebc13d12d593a128240db45"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "81fd9b704b02f37656d9ecee90d323936966cef4d31c8589da5adf964f43e3bd"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "4eccebab0508e6609be9a15632ea437fe30fbd291b8aaba2260526d375922fb8"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "2d129cf8fe8957788783bb9917db895460dbf96966d2c1d070d5e90570679306"

      def install
        bin.install "tis"
      end
    end
  end
end
