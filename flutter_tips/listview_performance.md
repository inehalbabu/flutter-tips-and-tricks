# List performance essentials

Big lists are one of the most common Flutter performance problems. These tips keep scrolling smooth.

## Tips

- Prefer `ListView.builder` / `GridView.builder` for large or infinite lists.
- Use `itemExtent` (or `prototypeItem`) when rows have a fixed height.
- Avoid heavy work inside `itemBuilder` (parsing, decoding, large formatting). Precompute when possible.
- Keep list items small and `const` where you can.
- Only add `RepaintBoundary` when profiling shows repaints are a problem (don’t spam it).

## Example

```dart
ListView.builder(
  itemCount: items.length,
  itemExtent: 56,
  itemBuilder: (context, index) {
    final item = items[index];
    return ListTile(title: Text(item.title));
  },
)
```

