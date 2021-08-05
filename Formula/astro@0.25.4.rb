# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0254 < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "0.25.4"
  bottle :unneeded
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.25.4/astro_0.25.4_darwin_amd64.tar.gz"
      sha256 "5efa79b11f24b7df9f270babaaa5e05d06c98d12851c7341ec37d4ac7cf6ba1f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v0.25.4/astro_0.25.4_linux_amd64.tar.gz"
      sha256 "bffb5d76ca2082c8cd573c217f5f4208329f3704cc89e463494063e672cc1dec"
    end
  end

  def install
    bin.install "astro"
  end

  test do
    system "#{bin}/astro version"
  end
end
