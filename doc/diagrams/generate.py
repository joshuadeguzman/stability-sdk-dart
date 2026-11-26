"""Draws the diagram in the README as SVG.

Style: white background, Google Sans Flex and Google Sans Code, light group
panels, white cards with a colored accent bar, and right-angle arrows.

Usage: python3 generate.py <out-dir>
Render it to PNG in a browser with Google Sans Flex and Google Sans Code
loaded, for example headless Chrome at a device scale factor of 2.
"""
import sys
from html import escape
from pathlib import Path

OUT = Path(sys.argv[1])

BLUE = "#0175C2"
GOOGLE_BLUE = "#1A73E8"
GREEN = "#188038"
YELLOW = "#E37400"
PURPLE = "#7C3AED"
GRAY = "#5F6368"
INK = "#1B1B1F"
LINE = "#E3E3E6"
SURF = "#F7F8F9"
SANS = "'Google Sans Flex', 'Google Sans', Arial, sans-serif"
MONO = "'Google Sans Code', ui-monospace, monospace"

W, H = 1660, 500
PX = [20, 430, 840, 1250]
PW = 390
CW = PW - 40
TOP, LOW = 90, 290

parts = []
markers = set()


def group(x, label, color):
    parts.append(
        f'<rect x="{x}" y="30" width="{PW}" height="400" rx="20" fill="{SURF}" '
        f'stroke="{LINE}" stroke-width="1.5"/>'
        f'<text x="{x + 22}" y="62" font-family="{SANS}" font-size="13" '
        f'font-weight="600" letter-spacing="1.2" fill="{color}">{label}</text>'
    )


def card(col, y, title, sub, color, code=None):
    x = PX[col] + 20
    h = 96 if code else 72
    parts.append(
        f'<rect x="{x}" y="{y}" width="{CW}" height="{h}" rx="12" fill="#fff" '
        f'stroke="{LINE}" stroke-width="1.5"/>'
        f'<rect x="{x}" y="{y + 10}" width="5" height="{h - 20}" rx="2.5" fill="{color}"/>'
        f'<text x="{x + 22}" y="{y + 34}" font-family="{SANS}" font-size="18" '
        f'font-weight="600" fill="{INK}">{escape(title)}</text>'
        f'<text x="{x + 22}" y="{y + 57}" font-family="{SANS}" font-size="14" '
        f'fill="{GRAY}">{escape(sub)}</text>'
    )
    if code:
        parts.append(
            f'<text x="{x + 22}" y="{y + 82}" font-family="{MONO}" font-size="13" '
            f'fill="{GRAY}">{escape(code)}</text>'
        )


def arrow(pts, color=GRAY, dashed=False):
    d = "M" + " L".join(f"{x} {y}" for x, y in pts)
    dash = ' stroke-dasharray="6 5"' if dashed else ""
    markers.add(color)
    parts.append(
        f'<path d="{d}" fill="none" stroke="{color}" stroke-width="2"{dash} '
        f'marker-end="url(#a{color.lstrip("#")})"/>'
    )


def note(text, x, y, color=GRAY, anchor="middle", size=12.5):
    parts.append(
        f'<text x="{x}" y="{y}" text-anchor="{anchor}" font-family="{SANS}" '
        f'font-size="{size}" fill="{color}">{escape(text)}</text>'
    )


group(PX[0], "YOUR CODE", BLUE)
group(PX[1], "STABILITY_SDK", PURPLE)
group(PX[2], "OVER HTTP", GREEN)
group(PX[3], "SERVERS", YELLOW)

card(0, TOP, "Flutter app or Dart server", "Calls one method per service", BLUE,
     code="stability.generate.core(...)")
card(0, LOW, "GeneratedImage", "bytes, mimeType, seed, finishReason", BLUE)
card(1, TOP, "StabilityClient", "generate, upscale, edit, control", PURPLE,
     code="results.wait(generation)")
card(1, LOW, "Checks inputs first", "Bad values fail before any request", PURPLE)
card(2, TOP, "Multipart POST", "accept: image/*", GREEN,
     code="authorization: Bearer <key>")
card(2, LOW, "Async results", "202 while running, then the image", GREEN,
     code="GET /v2beta/results/{id}")
card(3, TOP, "Stability AI REST API", "api.stability.ai/v2beta", YELLOW)
card(3, LOW, "Your proxy, optional", "Holds the key. Set baseUrl to it.", YELLOW)

mid = TOP + 36
for col in range(3):
    arrow([(PX[col] + 20 + CW, mid), (PX[col + 1] + 20, mid)])
# Image back to the app.
back = LOW + 36
arrow([(PX[3] + 20 + CW / 2, TOP + 72), (PX[3] + 20 + CW / 2, 250),
       (PX[0] + 20 + CW / 2, 250), (PX[0] + 20 + CW / 2, LOW)], BLUE, dashed=True)
note("image bytes, seed and finish reason, or a typed error", (PX[0] + PX[3]) / 2 + 200, 242,
     BLUE)
note("Keep the API key on a server you control. Anyone with your app can read a key inside it.",
     PX[0] + 4, H - 28, anchor="start", size=15)

defs = "".join(
    f'<marker id="a{c.lstrip("#")}" viewBox="0 0 10 10" refX="9" refY="5" '
    f'markerWidth="7" markerHeight="7" orient="auto-start-reverse">'
    f'<path d="M0 0 L10 5 L0 10 z" fill="{c}"/></marker>'
    for c in sorted(markers)
)
svg = (
    f'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 {W} {H}" width="{W}" '
    f'height="{H}" role="img" aria-label="How stability_sdk sends a request">'
    f"<title>How stability_sdk sends a request</title><defs>{defs}</defs>"
    f'<rect width="{W}" height="{H}" fill="#fff"/>' + "".join(parts) + "</svg>"
)
(OUT / "how_it_works.svg").write_text(svg)
print("ok")
