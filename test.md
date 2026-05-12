# Expandomatic Test File

Use this file to manually verify each expansion mode. Place cursor inside each section and press ⌃⇧⌘→ repeatedly.

---

## Prose

This is a sentence with the word **extraordinary** in it. Here is another sentence. And a third one, for good measure.

Dr. Smith visited the U.S.A. last Tuesday. He said it was fine. Really fine.

This is a second paragraph. It has multiple sentences. The expansion should stop at the paragraph boundary.

### Nested Section

This paragraph lives inside a nested section. Expanding past the paragraph should select this whole section, then the parent section, then the document.

---

## Table

| Name       | Role         | Location      |
|------------|--------------|---------------|
| Alice      | Engineer     | New York      |
| Bob        | Designer     | San Francisco |
| Carol      | Manager      | Chicago       |

---

## Equation

Inline: $E = mc^2$ and $a^2 + b^2 = c^2$ appear mid-sentence.

Block:

$$
\int_0^\infty e^{-x^2} dx = \frac{\sqrt{\pi}}{2}
$$

$$
F = ma + \frac{d}{dt}(mv) - \sum_{i=1}^{n} f_i(x, y)
$$

---

## Fenced Code Block

```python
def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)

result = fibonacci(10)
print(result)
```

```typescript
function greet(name: string): string {
    return `Hello, ${name}!`;
}
```

---

## URL (prose context, 2nd press)

Visit https://obsidian.md/plugins for more information about community plugins.

---
