# scripts
# System Administration Scripts

This repository contains a collection of scripts designed to assist with various system administration tasks. These scripts are intended to automate routine tasks, improve efficiency, and ensure consistency across different environments.

## Table of Contents

- [Introduction](#introduction)
- [Scripts](#scripts)
  - [Autoupgrade Script](#autoupradescript)
  - [Password reset](#password-reset)
  - [Find Files Complex Condition](#find-files-complex-condition)
- [Usage](#usage)
- [Requirements](#requirements)
- [Installation](#installation)

## Introduction

This project is a collection of scripts that can be used for various system administration tasks. Each script is designed to be simple, efficient, and easy to use. The scripts cover a range of tasks from backups to user management and system monitoring.

## Scripts

### Autoupgrade Script
# autoupgrades.sh

## Description
The `autoupgrades.sh` script is a set of instructions designed to automate the process of upgrading software packages on a Unix-based system. This script ensures that all installed packages are up-to-date with the latest versions available from the repositories. 
## Usage
To use the `autoupgrades.sh` script, follow these steps:
1. Open a terminal.
2. Execute the commands with appropriate permissions 

### Password reset (RHEL based Linux)
# reset_pwd.sh

## Description
Instructions to reset the root password in Red Hat Enterprise Linux by booting into single-user mode
and performing necessary system changes

### Find Files Complex Condition
# find_files_complex_condition.sh

## Description
The `find_files_complex_condition.sh` script finds all ASCII text files in the current directory and subdirectories, checks their size, and prints out the content of the files that are exactly 1033 bytes in size. The script handles filenames with spaces and other special characters safely.

## Usage
To use the `find_files_complex_condition.sh` script, follow these steps:
1. Open a terminal.
2. Execute the following command:
    ```sh
    ./find_files_complex_condition.sh
    ```

## Requirements

- Unix-based operating system
- Administrative (root) privileges
- Internet connection to access package repositories

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/mhayo/scripts.git
    ```

