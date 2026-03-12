# Master Flutter constraints (avoid common layout errors)

Most Flutter layout bugs come from constraints flowing down and sizes flowing up.

## Common errors and fixes

- **“Vertical viewport was given unbounded height”**
  - Cause: putting a scrollable inside a parent that doesn’t constrain height.
  - Fix: wrap with `Expanded`, give a fixed height, or use `CustomScrollView` with slivers.

- **`Column` overflow (yellow/black stripes)**
  - Fix: add scrolling (`SingleChildScrollView`) or constrain content with `Expanded/Flexible`.

- **`Row` text overflow**
  - Fix: wrap text in `Expanded` and use `maxLines` + `overflow`.

## Example: scrollable inside a column

```dart
Column(
  children: [
    const Text('Header'),
    Expanded(
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, i) => ListTile(title: Text('Item $i')),
      ),
    ),
  ],
)
```

