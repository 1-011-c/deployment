# testbefund deployment (UNDER CONSTRUCTION)

Kubernetes based single instance deployment of the Testbefund services.

> :construction: This deployment is still under construction and yet **not production ready**!

This repos deploys your *custom* Testbefund application stack, which consists of an [Ubuntu](https://ubuntu.com/) server and a single node [Kubernetes](https://kubernetes.io/) cluster using [K3S](https://k3s.io/).

Out of the box this deployment should be:

- Fully Functional - you may use it for your purpose providing your testbefund based infrsatructure.
- Safe - all deployed services are configured with safe basics for unattended operation.
- Standard Conform - the kubernetes-based deployment will allow you to seamless transition to other provides as needed.
- Cost Effective - this VM-based deployment is meant to be ran on a single virtual machine.

## Requirements

- [Packer](https://www.packer.io/) - is used to build a OVF image of your personal instance.
- [VirtualBox](https://www.virtualbox.org/) - is needed used as the virtualization layer to create your personal virtual machine.
- Internet Connection

## Getting Started

### On Unix/Linx/Mac OS:

#### Provision New Virtual Machine

```sh
packer build single.testbefund.packer.json
```

Depending on your machine and your internet connection the provisioning may take severeal minutes, don't panic and wait for Packer to stop.

After provisioning the `release/` folder will contain your `.ovf` based virtual machine.

> To "rebuild" an existing release run `packer build --force single.testbefund.packer.json` or empty the `release/` folder.

#### Deploy Testbefund

1. Upload and start your provisioned instance.
2. Open ports 80 (Http) and 442 (Https) in your firewall.
3. Check your DNS-entries.

## Contribution

We are happy to take feedback and contributions to improve the deployment of the Testbefund-Stack.
