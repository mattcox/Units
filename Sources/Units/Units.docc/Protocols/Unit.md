# ``Units/UnitLinear``

The `UnitLinear` protocol is a specialisation of the ``Unit`` protocol that a
``Measurement`` can be measured in.

For units that can be described using a linear equation in the form `y=m*x+c`,
where **m** is some coefficient, and **c** is some constant, the unit conversion
will be handled by the protocol automatically by simply providing a coefficient,
and if necessary a suitable constant.
