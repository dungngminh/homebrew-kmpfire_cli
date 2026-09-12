# typed: false
# frozen_string_literal: true

# Homebrew formula template for dungngminh/homebrew-kmpfire_cli
# Placeholders filled by .github/workflows/deploy-homebrew.yml
class Kmpfire < Formula
  desc "CLI to configure Firebase for Kotlin Multiplatform / Compose Multiplatform"
  homepage "https://github.com/dungngminh/kmpfire_cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.1.0/kmpfire-macos-arm64.tar.gz"
      sha256 "2c09067b60b1c1e897c7c0383b29e49db4bfc7220c602ccf1f59b81ed982c9d2"

      def install
        bin.install "kmpfire-macos-arm64" => "kmpfire"
      end
    end

    on_intel do
      url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.1.0/kmpfire-macos-x64.tar.gz"
      sha256 "0cd882c6d3fe4e3fb12c328ab334141f9ada53d11a9f35312e49451146dd6252"

      def install
        bin.install "kmpfire-macos-x64" => "kmpfire"
      end
    end
  end

  on_linux do
    depends_on arch: :x86_64

    url "https://github.com/dungngminh/kmpfire_cli/releases/download/v0.1.0/kmpfire-linux-x64.tar.gz"
    sha256 "13037db94efbe5509662341c30c02263478aec5b49b1e35d01b42adb60509070"

    def install
      bin.install "kmpfire-linux-x64" => "kmpfire"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kmpfire --version")
  end
end
