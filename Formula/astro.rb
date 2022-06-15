# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.1.0/astro_1.1.0_darwin_arm64.tar.gz"
      sha256 "75cdadb7523bebb0b0acfcb0d8724d2800fdbad6fb629a75c01a69f31c746eca"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.1.0/astro_1.1.0_darwin_amd64.tar.gz"
      sha256 "0101cf7c61a6710d7476f7a2ef8395ac076f2d074696f167d4eca01fcca2b736"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.1.0/astro_1.1.0_linux_arm64.tar.gz"
      sha256 "c01bdad2d8979f731cd8e3f8407c031b937d942fef45c3768a124a5d2f575b0b"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.1.0/astro_1.1.0_linux_amd64.tar.gz"
      sha256 "d56f540cd0ac5df5759ef7676cf1f78f1a510790b49b9f7531d83c18602842b2"  
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
