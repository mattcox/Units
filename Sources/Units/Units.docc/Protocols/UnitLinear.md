# ``Units/Unit``

The `Unit` protocol provides the units that a ``Measurement`` can be measured
in. For example ``Duration`` can be measured in ``Duration/seconds``,
``Duration/minutes``...etc

When implementing a new `Measurement` type, clients should provide a `Unit` type
that conforms to this protocol describing the types of units the measurement
supports.
