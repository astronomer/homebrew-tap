# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AstroAT1240 < Formula
    desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
    homepage "https://astronomer.io"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.0/astro_1.24.0_darwin_arm64.tar.gz"
        sha256 "1b7867c4a7871984eaf0638ef29553c4e8f64310fa31afd688f341b0554adbf7"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.0/astro_1.24.0_darwin_amd64.tar.gz"
        sha256 "8f51f7305be0cd67f3bc5582a4e919c1cfae95d044f90e565f7b943ea8647a0a"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.0/astro_1.24.0_linux_arm64.tar.gz"
        sha256 "d2faee58962e4ad3512d1ecdc0ada4c941dcc6daa96253b800af7caa45652691"
      end
      if Hardware::CPU.intel?
        url "https://github.com/astronomer/astro-cli/releases/download/v1.24.0/astro_1.24.0_linux_amd64.tar.gz"
        sha256 "6affa21df9f58ce4f1940dc51cdd6f1b40d944b63d62dab4078e0ac51e30bec0"
      end
    end
  
    def install
      bin.install "astro"
    end
  
  
    test do
      system "#{bin}/astro version"
    end
  end
