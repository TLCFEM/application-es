# Numerical evaluations of a novel membrane element in simulations of reinforced concrete shear walls

This repository contains the source code and example models of paper [10.1016/j.engstruct.2019.109592](https://doi.org/10.1016/j.engstruct.2019.109592).

## Remarks

Adding reinforcement layer with existing element is considered not elegant. Thus, SRGCMQ and RCP4 elements are deprecated. Some examples won't run with the latest version of `suanPan`. To add reinforcement to membrane elements, one can use `Rebar2D` wrapper.

The numerical examples used in the paper are developed in `suanPan`. To perform the numerical analysis, one can download and install [`suanPan`](https://github.com/TLCFEM/suanPan). Then run the model via, for example, the following command.

```sh
suanpan -f CDPPS-1X1.supan
```