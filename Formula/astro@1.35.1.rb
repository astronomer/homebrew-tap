# typed: false
# frozen_string_literal: true
# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1351 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.35.1"
  depends_on "podman" => :recommended if OS.mac?
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.35.1/astro_1.35.1_darwin_arm64.tar.gz"
      sha256 "ad762b768ddee7db063d35d5aea5a23d011c941f12dbd795e34fc9f392921633"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.35.1/astro_1.35.1_darwin_amd64.tar.gz"
      sha256 "767e424884e89430b8ba093471c0dd87fa5bf9e1c1e83fb1b17f13d35e59e84b"
    end
  end
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.35.1/astro_1.35.1_linux_arm64.tar.gz"
      sha256 "5590bba36e373fa9a0accc401cd35458af0b1dbea9fae88c8da1f5d715cf263e"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.35.1/astro_1.35.1_linux_amd64.tar.gz"
      sha256 "26e2bc5e7c734d2079e816d9a466629c0a2efb734262b61931c24b975713b33a"
    end
  end
  def install
    bin.install "astro"
  end
  test do
    system "#{bin}/astro version"
  end
end
