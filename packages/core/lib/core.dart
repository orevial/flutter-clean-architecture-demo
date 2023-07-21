/// Core package contains reusable code that can be shared amongst different
/// layers packages. In that way the core package should not have any dependency
/// to other layers and should be as pure as possible to avoid strong coupling
/// through this package
library core;

export 'di/di.dart';
export 'helpers/future.extensions.dart';
export 'helpers/helpers.dart';
export 'helpers/iterable.extensions.dart';
export 'helpers/string.extensions.dart';
