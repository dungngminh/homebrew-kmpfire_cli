# typed: false
# frozen_string_literal: true

# Homebrew formula template for dungngminh/homebrew-kmpfire_cli
# Placeholders filled by .github/workflows/deploy-homebrew.yml
class Kmpfire < Formula
  desc "CLI to configure Firebase for Kotlin Multiplatform / Compose Multiplatform"
  homepage "https://github.com/dungngminh/kmpfire_cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.2.0/kmpfire-macos-arm64.tar.gz"
      sha256 "57d6b123382c9cb7c956e18c911f506a06a54aa1520291f11b9ec7fb3e0ef28f"

      def install
        bin.install "kmpfire-macos-arm64" => "kmpfire"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.2.0/kmpfire-macos-x64.tar.gz"
      sha256 "b83fd9d0ac3a6c7ae8aa8e77e53f0fd227d38fb10b9775005948b582e4a6d052"

      def install
        bin.install "kmpfire-macos-x64" => "kmpfire"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.2.0/kmpfire-linux-x64.tar.gz"
    sha256 "75bd35c915e86df21dc9b0ab10cca645c90e1359dd9cef462f8f889037d3568b"

    def install
      bin.install "kmpfire-linux-x64" => "kmpfire"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kmpfire --version")
  end
end
