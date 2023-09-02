# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+340dc69"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "c815eb762015c4137f1df64327a1ea95de0dfd58eee885a55e4e7870eb876b06"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "ae98b56afc3eb16e99e7e0af20a94ee0d9cf9a0a2efe8be7422f4d9cbed8dd0f"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "fc8fe648efdd5236ecd288408921b8059eeb7dec43152a1de725af05606d1a05"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "d13645831d1bde2ff0ff1a32fb15d55e695ea5ecd58b5969c931c96468c88d07"

      def install
        bin.install "tis"
      end
    end
  end
end
