# Machine Flavors

This directory defines **machine shapes**, independent of providers.

A flavor describes:

- CPU, memory, disk intent
- OS assumptions
- expected capabilities

Flavors do NOT know:

- which provider is used
- how the VM is created
- networking details

They are consumed by environments and implemented by providers.
