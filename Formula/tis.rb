# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+960add5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "c276d64574bc457238f3b139e93a3ad29e936ea75dcfd7b94df14e9d68ca6d94"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "613c5cd0dbcba5929214a571b6b4ea6f4813cecaf1320c7b86753412f71dd6df"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "f48ffbca0cba3ec60a905ef066b07c33f950ac288e832ec194343c8ab1cb6fd7"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "4e2750abad1972afde64eb389e34f3e1ce79defaba346baa825d8196e3161503"

      def install
        bin.install "tis"
      end
    end
  end
end
