# Use Keys correctly in dynamic lists

When a list changes (insert/remove/reorder), keys help Flutter keep the right state with the right item.

## Rules of thumb

- If items can move, use a **stable key**: `ValueKey(item.id)`.
- Avoid `UniqueKey()` for list items that rebuild often (it forces Flutter to treat every item as brand new).
- Don’t key by index when items can be inserted/removed (state will “jump”).

## Example

```dart
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    final item = items[index];
    return ListTile(
      key: ValueKey(item.id),
      title: Text(item.title),
    );
  },
)
```

