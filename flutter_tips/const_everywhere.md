# Prefer `const` Widgets (when possible)

Using `const` reduces rebuild work because Flutter can short-circuit widget re-creation when nothing changed.

## Quick wins

- Make widget constructors `const` when the class is immutable.
- Use `const` for common UI building blocks: `Text`, `SizedBox`, `EdgeInsets`, `Icon`, `Duration`.
- If a parent can’t be `const`, children still can be.

## Example

```dart
class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.person),
        SizedBox(width: 8),
        Text('Profile'),
      ],
    );
  }
}
```

## Common pitfall

If you write `final now = DateTime.now();` in `build`, it forces widgets that depend on it to be non-`const`. Compute changing values outside `build` (or in state) when appropriate.

