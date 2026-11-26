# ``Units``

Work with physical units in a clear, type-safe, and expressive way.

Units provides unit conversion across different measurement types such as
distance, angle, speed, temperature, energy, and more.

Measurements only allow arithmetic that makes sense physically. Measurements of
the same kind can be added, subtracted and scaled, products and quotients of
different kinds return the measurement they actually are, and temperatures,
which are measured from an arbitrary zero, are moved by a separate
``TemperatureDifference`` rather than added together.

## Topics

### Arithmetic

- ``MeasurementArithmetic``
- ``MeasurementAffine``

### Temperature

- ``Temperature``
- ``TemperatureDifference``

### Energy and Electricity

- ``Energy``
- ``Power``
- ``ElectricCurrent``
- ``Voltage``
