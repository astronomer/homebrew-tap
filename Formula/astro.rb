# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.28.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.28.1/astro_1.28.1_darwin_arm64.tar.gz"
      sha256 "0042a32c76b5be895a07a5282c535e5f8e793e498679d80478756ccb8756839b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.28.1/astro_1.28.1_darwin_amd64.tar.gz"
      sha256 "9a9c026b48d7648eda341fba39b4fe533fd20053e239686b96dc3f6843b4f6c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.28.1/astro_1.28.1_linux_arm64.tar.gz"
      sha256 "1b23874ccd7955cf7d16434ff2cf4b95a5ae303aaee2e6eeb2f653b9bc1f61c5"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.28.1/astro_1.28.1_linux_amd64.tar.gz"
      sha256 "a20039c88bf1eec5d10c9c4786dfca9f7c7025d445cd92c2aa3664cd01de7339"
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
