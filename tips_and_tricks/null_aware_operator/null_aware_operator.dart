/// Null-aware Operators:
/// - Use ?. to avoid a null exception if the object is null.
/// Use ?? to provide a default value if the expression is null.
///
// Example ?. operator
var length = str?.length;

// Example ?? operator
var value = someNullableValue ?? defaultValue;