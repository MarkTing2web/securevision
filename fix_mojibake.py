import os

directory = r"c:\Users\ler\OneDrive - Securevision Pte Ltd\Web2026"

def fix_mojibake(file_path):
    try:
        # Read the file as UTF-8
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # If it looks like it has mojibake (e.g. 'âœ“' or 'ðŸ ')
        # We try to fix it by encoding to latin-1 and decoding as utf-8
        # This only works if it was a simple UTF-8 -> ANSI -> UTF-8 sequence
        try:
            # Check for common mojibake indicator: 'â' (e2 in latin-1)
            if 'â' in content or 'ð' in content or 'Â' in content:
                # We need to handle characters that latin-1 might not cover 
                # if the 'ANSI' encoding was something else, but latin-1 is the most common.
                # However, Python's 'cp1252' is more accurate for Windows.
                repaired = content.encode('cp1252').decode('utf-8')
                
                if repaired != content:
                    with open(file_path, 'w', encoding='utf-8') as f:
                        f.write(repaired)
                    print(f"Repaired: {file_path}")
                    return True
        except (UnicodeEncodeError, UnicodeDecodeError):
            # If a simple re-encode fails, we might have mixed content.
            # We can do targeted replacements for the most common ones.
            replacements = {
                'â–¾': '▾',
                'ðŸ ": '🏠',
                'â†’': '→',
                'Â·': '·',
                'Â©': '©',
                'â––': '▾',
                'ðŸ“ž': '📞',
                'ðŸ’¬': '💬',
                'âœ‰ï¸ ': '✉️',
                'ðŸ ˜ï¸ ': '🏘️',
                'ðŸ ª': '🏬',
                'ðŸ «': '🏫',
                'ðŸ ­': '🏭',
                'ðŸ“¹': '📷',
                'ðŸšª': '🚪',
                'ðŸš—': '🚗',
                'ðŸ“Š': '📊',
                'ðŸ ·ï¸ ': '🏷️',
                'ðŸ“‚': '📂',
                'ðŸ§®': '🧮',
                'ðŸ“š': '📚',
                'ðŸ”§': '🔧',
                'ðŸ“¥': '📥',
                'ðŸ —ï¸ ': '🏗️',
                'ðŸ¤–': '🤖',
                'ðŸ‡¸ðŸ‡¬': '🇸🇬',
                'ðŸ‘¤': '👤',
                'ðŸ¡ï¸ ': '🛡️',
                'ðŸ †': '🏆',
                'ðŸ“‹': '📋',
                'ðŸ• ': '🕒',
                'â˜°': '☰',
                'âœ✓': '✓',
                'âœ': '✓',
                'â€”': '—',
                'â€“': '–'
            }
            new_content = content
            for k, v in replacements.items():
                new_content = new_content.replace(k, v)
            
            if new_content != content:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write(new_content)
                print(f"Repaired (via fallback): {file_path}")
                return True
            
    except Exception as e:
        print(f"Error processing {file_path}: {e}")
    return False

for root, dirs, files in os.walk(directory):
    for file in files:
        if file.endswith(".html"):
            fix_mojibake(os.path.join(root, file))
