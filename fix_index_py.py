import os

def fix_index():
    path = r"c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026\index.html"
    
    replacements = {
        "🛡ï¸ ": "🛡️",
        "ðŸ †": "🏆",
        "ðŸ”—": "🔗",
        "â”€â”€": "──",
        "✓“": "✓",
        "ðŸ› ï¸ ": "🛠️",
        "ðŸ’°": "💰",
        "ðŸ’¬": "💬",
        "ðŸ“ž": "📞",
        "SECUREâ„¢": "SECURE™",
        "VESTAâ„¢": "VESTA™",
        "GantryGoâ„¢": "GantryGo™",
        "ðŸ ": "🏠",
        "ðŸ ¢": "🏢",
        "ðŸ ª": "🏬",
        "ðŸ ­": "🏭",
        "ðŸ“¯": "📊",
        "ðŸ” ": "🔍",
        "âš¡": "⚡",
        "ðŸŽ¯": "🎯",
        "ðŸ“ ": "📍",
        "ðŸ•’": "🕒",
        "ðŸ“²": "📱",
        "ðŸ“§": "📧"
    }

    if not os.path.exists(path):
        print(f"File not found: {path}")
        return

    try:
        with open(path, 'r', encoding='utf-8') as f:
            content = f.read()

        original_content = content
        for mangled, correct in replacements.items():
            content = content.replace(mangled, correct)

        if content != original_content:
            with open(path, 'w', encoding='utf-8') as f:
                f.write(content)
            print("Successfully patched index.html")
        else:
            print("No changes needed in index.html (mangled patterns not found)")

    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    fix_index()
