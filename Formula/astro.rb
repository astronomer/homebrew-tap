# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.20.0/astro_1.20.0_darwin_arm64.tar.gz"
      sha256 "6f765f45cfb9659c8798b730dc2b988e33ad30d281326544d42d795501aa78db"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.20.0/astro_1.20.0_darwin_amd64.tar.gz"
      sha256 "0892190e432024359a1a1e32bb7699f2975636f8c9bfa38736795fe039641a54"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.20.0/astro_1.20.0_linux_arm64.tar.gz"
      sha256 "9801d630b5cda385fd3b75ba219d712632d60cf9c771de790667833c9fb50c2a"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.20.0/astro_1.20.0_linux_amd64.tar.gz"
      sha256 "e10ab717415d7ce6ad0cfffd114a5ee62bd237992ef288e249eb5bbbf13e2448"
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
