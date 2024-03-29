# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1230 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.23.0/astro_1.23.0_darwin_arm64.tar.gz"
        sha256 "f6009b797b89b6bea3cb419ff181ddbbaf0d613af70b04e51b5482f1d645600e"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.23.0/astro_1.23.0_darwin_amd64.tar.gz"
        sha256 "4f3669c53d17a89585752af331fae4e67aa0aff02495b3e2055aa9386b1ec3c6"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.23.0/astro_1.23.0_linux_arm64.tar.gz"
        sha256 "3e8933ee458285e500960ead1a47ec636728299020242543fa5825a2bc7de662"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.23.0/astro_1.23.0_linux_amd64.tar.gz"
        sha256 "9c7d997b3fcfde4e50198f28dc1b5b6c53352e4014799bc24f5c450fd3ef4a03"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
