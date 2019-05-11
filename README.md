# BC Math extension for Chassis

Install [BC Math](https://www.php.net/manual/en/book.bc.php) within your [Chassis](http://chassis.io/) box!

## Activation

### Automated Installation

To add the BC Math extension to a Chassis box, include `chassis/bcmath` in the `extensions` list within your `config.local.yaml` file:

```yml
extensions:
    - chassis/bcmath
```

Then run `vagrant provision` to instruct Chassis to download and install the new extension.

### Manual Installation

Ensure you have a Chassis instance set up locally already.

```
# In your Chassis dir:
cd extensions

# Grab the extension
git clone --recursive https://github.com/Chassis/bcmath.git bcmath

# Reprovision
cd ..
vagrant provision
```

You're now ready to use BC Math within your Chassis virtual machine!
