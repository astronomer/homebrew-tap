# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1131 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
        if Hardware::CPU.arm?
            url "https://github.com/astronomer/astro-cli/releases/download/v1.13.1/astro_1.13.1_darwin_arm64.tar.gz"
            sha256 "1bdd410287f169fdbe486ac51b387ba2ed220dc1c9f671817cfd3328c0157547"
        end
        if Hardware::CPU.intel?
            url "https://github.com/astronomer/astro-cli/releases/download/v1.13.1/astro_1.13.1_darwin_amd64.tar.gz"
            sha256 "b62dafcd32cfadc9ebe8a2a0eb7b4798ed90ec3ddabaf55a584fd7340401b7ed"
        end
        end

        on_linux do
        if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
            url "https://github.com/astronomer/astro-cli/releases/download/v1.13.1/astro_1.13.1_linux_arm64.tar.gz"
            sha256 "34db0d033f5aa9f53dde5076830e11683e76e7575a8caff98f01cea5620e1cbc"
        end
        if Hardware::CPU.intel?
            url "https://github.com/astronomer/astro-cli/releases/download/v1.13.1/astro_1.13.1_linux_amd64.tar.gz"
            sha256 "01ae6f4b5fef5ca7bf322e6368aeb5dd50e1fc1b0d6c5b7009edba83a650852f"
        end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end