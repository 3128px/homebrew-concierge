# typed: false
# frozen_string_literal: true

class Tis < Formula
  desc "A CLI for TIS API"
  homepage "https://3128px.github.io/concierge/tis"
  version "v0.0.1-nightly+c781322"

  on_macos do
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_amd64.tar.gz"
      sha256 "b53f8355be2ebd6ab08e826693ddfbdf84f16f71b367e71077c7e53ac2f9b758"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.arm?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_darwin_arm64.tar.gz"
      sha256 "9d42a39115be133bd0761b2bb8966f848b58c6c88116b889eabaeda915c0eabe"

      def install
        bin.install "tis"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_amd64.tar.gz"
      sha256 "14a4688e31daa61d955fa62e0c5f829b2cb49db06593c6bc4f7640eb2c7ff2f6"

      def install
        bin.install "tis"
      end
    end
    if Hardware::CPU.intel?
      url "https://3128px.github.io/concierge/tis/nightly/cli_nightly_linux_arm64.tar.gz"
      sha256 "e5df7413f2416ad68672c8e3c171bba7f32358f9de6c301f2db3c25cb94758a6"

      def install
        bin.install "tis"
      end
    end
  end
end
