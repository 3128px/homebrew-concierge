# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+978972f"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "d90bff20afd118e277cfaaf129c207939d267822572783e3b01eeb84e878a092"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "0267075662c77b81893f49d14a50b44dafa0407f6eb00539274ba62f01f00035"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "f7b194ca4ca3a43b611b7c1985c7bae8239968eb8c46289f3505652b38dc4a37"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "b339955e5ab421f4d029e4bb064c271d438a481e9e2e9ffb907a62a8b5f57d75"

      def install
        bin.install "tis"
      end
    end
  end
end
