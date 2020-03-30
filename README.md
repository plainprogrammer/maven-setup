# Maven Setup

Enables the quick setup of Mavenlink developer laptops and workstations.

## Getting Started

To start the setup process, open a Terminal window and run the following
command. The command will explain what it is about to do and will run through
a handful of different stages to get your machine setup and ready to go.

```
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/plainprogrammer/maven-setup/master/welcome.zsh)"
```

## Staying Up To Date

The easiest way to keep up to date is to `git pull` this repository regularly
and rerun the setup playbooks you need. To make this as easy as possible, you
can use the `setup` script with any of the following options to update against
that setup's playbook. You can even provide multiple setups at once to smooth
the process out even more.

```
$ ./setup bootstrap           # Update with the basic bootstrap playbook
$ ./setup bigmaven            # Update with the playbook for working on BigMaven

$ ./setup bootstrap bigmaven  # Update with both bootstrap and BigMaven playbooks.
```
