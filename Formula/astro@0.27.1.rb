# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT0271 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
    version "0.27.1"
  
    on_macos do
      url "https://github.com/astronomer/astro-cli/releases/download/v0.27.1/astro_0.27.1_darwin_amd64.tar.gz"
      sha256 "e63f8a235943c5c12a1a08038f1575f55cc2484e89352bc526b0d98933beae97"
    end
  
    on_linux do
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v0.27.1/astro_0.27.1_linux_amd64.tar.gz"
        sha256 "fff9ff91777b2e27093f7391c7f4c66a00b03c0a8d8dd3e458365367862ca2b7"
      end
    end
  
    def install
      bin.install "astro"
    end
  
    test do
      system "#{bin}/astro version"
    end
  end
