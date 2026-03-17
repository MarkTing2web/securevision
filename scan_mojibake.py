import re

def find_mojibake(file_path):
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Common mojibake starts with these in Latin-1
    # â (0xE2), ð (0xF0), Â (0xC2), Ã (0xC3)
    
    # Find sequences of non-ASCII characters that might be double-encoded
    # We look for things like â†’
    pattern = r'[âðÂÃ][\u0080-\u024F]+'
    matches = re.finditer(pattern, content)
    
    results = []
    for match in matches:
        m = match.group()
        try:
            # Try to repair
            repaired = m.encode('cp1252').decode('utf-8')
            results.append((m, repaired, content.count(m)))
        except:
            pass
    
    return results

file_path = r'c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026\index.html'
mojibake = find_mojibake(file_path)

# Remove duplicates
mojibake = list(set(mojibake))

for m, r, count in mojibake:
    print(f"Found: {m} -> {r} ({count} occurrences)")
