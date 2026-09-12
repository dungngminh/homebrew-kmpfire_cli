# typed: false
# frozen_string_literal: true

# Placeholder until the first kmpfire_cli GitHub Release is published.
# deploy-homebrew.yml overwrites this file with real URLs + checksums.
class Kmpfire < Formula
  desc "CLI to configure Firebase for Kotlin Multiplatform / Compose Multiplatform"
  homepage "https://github.com/dungngminh/kmpfire_cli"
  version "0.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.0.0/kmpfire-macos-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      def install
        bin.install "kmpfire-macos-arm64" => "kmpfire"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.0.0/kmpfire-macos-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"

      def install
        bin.install "kmpfire-macos-x64" => "kmpfire"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.0.0/kmpfire-linux-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"

    def install
      bin.install "kmpfire-linux-x64" => "kmpfire"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kmpfire --version")
  end
end
